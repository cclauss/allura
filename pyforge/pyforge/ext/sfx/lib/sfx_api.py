import re
import json
import httplib
import urllib2
import logging
from contextlib import closing

from tg import config
from pylons import c, request

from pyforge import model as M
from pyforge.lib.security import roles_with_project_access
from . import exceptions as sfx_exc

log = logging.getLogger(__name__)

def read_response(response, *expected):
    if not expected: expected = (200,)
    text = response.read()
    if response.status in expected:
        try:
            return json.loads(text)
        except ValueError:
            return text
    cls = sfx_exc.SFXAPIError.status_map.get(response.status, sfx_exc.SFXAPIError)
    raise cls('Error status %s' % response.status, text)

class SFXUserApi(object):
    
    def __init__(self):
        self.project_host = config.get('sfx.api.host', None)
        self.project_path = config.get('sfx.api.project_path', '/api/user')

    def _username_api_url(self, username):
        return 'http://%s/api/user/username/%s/json' % (
            self.project_host or request.host,
            username)

    def _userid_api_url(self, id):
        return 'http://%s/api/user/id/%s/json' % (
            self.project_host or request.host,
            id)

    def user_data(self, username, timeout=2):
        """
        given a sfnet hostname and userid, returns a dict of user data
        """
        try:
            url = self._userid_api_url(int(username))
        except ValueError:
            url = self._username_api_url(username)
        try:
            url_handle = urllib2.urlopen(url, timeout=timeout)
            return json.load(url_handle)['User']
        except urllib2.HTTPError, ex:
            if ex.code == 404: return None
            raise

    def upsert_user(self, username, user_data=None):
        un = re.escape(username)
        un = un.replace(r'\_', '[-_]')
        un = un.replace(r'\-', '[-_]')
        rex = re.compile('^' + un + '$')
        u = M.User.query.get(username=rex)
        if user_data is None:
            if u is not None and u.sfx_userid:
                user_data = self.user_data(u.sfx_userid)
            else:
                user_data = self.user_data(username)
        if u is None:
            if user_data is None: return None
            u = M.User(
                username=username,
                display_name=user_data['name'],
                sfx_userid=user_data['id'])
            n = M.Neighborhood.query.get(name='Users')
            n.register_project('u/' + u.username.replace('_', '-'), u, user_project=True)
        if user_data is None: return u
        if u.display_name != user_data['name']:
            u.display_name = user_data['name']
        if u.sfx_userid != user_data['id']:
            u.sfx_userid = user_data['id']
        if u.email_addresses != [ user_data['sf_email'] ]:
            u.email_addresses = [ user_data['sf_email'] ]
        if u.preferences.email_address != user_data['sf_email']:
            u.preferences.email_address = user_data['sf_email']
        return u

class SFXProjectApi(object):

    def __init__(self):
        self.project_host = config.get('sfx.api.host', None)
        self.project_path = config.get('sfx.api.project_path', '/api/project')

    def _connect(self):
        return closing(httplib.HTTPConnection(self.project_host or request.host))

    def _unix_group_name(self, neighborhood, shortname):
        path = neighborhood.url_prefix + shortname[len(neighborhood.shortname_prefix):]
        parts = [ p for p in path.split('/') if p ]
        if len(parts) == 2 and parts[0] == 'p':
            parts = parts[1:]
        return '.'.join(reversed(parts))

    def create(self, user, neighborhood, shortname, short_description='No description'):
        with self._connect() as conn:
            ug_name = self._unix_group_name(neighborhood, shortname)
            args = dict(
                user_id=user.sfx_userid,
                unix_group_name=ug_name,
                group_name=shortname,
                short_description=short_description)
            conn.request('POST', self.project_path, json.dumps(args))
            response = conn.getresponse()
            return read_response(response, 201)

    def read(self, p):
        with self._connect() as conn:
            ug_name = self._unix_group_name(p.neighborhood, p.shortname)
            conn.request('GET', self.project_path + '/name/' + ug_name + '/json')
            response = conn.getresponse()
            return read_response(response)

    def update(self, user, p):
        with self._connect() as conn:
            ug_name = self._unix_group_name(p.neighborhood, p.shortname)
            args = dict(
                user_id=user.sfx_userid,
                group_name=p.name,
                short_description=p.short_description,
                developers = [
                    pr.user.sfx_userid
                    for pr in roles_with_project_access('update', p)
                    if pr.user is not None and pr.user.sfx_userid is not None ])
            args['admins'] = args['developers']
            conn.request('PUT', self.project_path + '/' + ug_name, json.dumps(args))
            response = conn.getresponse()
            return read_response(response)

    def delete(self, p):
        with self._connect() as conn:
            ug_name = self._unix_group_name(p.neighborhood, p.shortname)
            conn.request('DELETE', self.project_path + '/' + ug_name)
            response = conn.getresponse()
            return read_response(response, 200,404,410)
