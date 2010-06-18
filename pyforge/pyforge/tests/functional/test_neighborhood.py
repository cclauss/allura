from pylons import g, c
import os
import pyforge

from ming.orm.ormsession import ThreadLocalORMSession
import Image, StringIO

from pyforge.tests import TestController

class TestNeighborhood(TestController):

    def test_home_project(self):
        r = self.app.get('/adobe/home/')
        assert r.location.endswith('/adobe/home/HomeHome/')
        r = r.follow()
        assert 'Welcome' in str(r), str(r)
        r = self.app.get('/adobe/admin/')
        assert r.location.endswith('/adobe/admin/overview')
        r = r.follow()
        assert 'admin' in str(r), str(r)

    def test_redirect(self):
        r = self.app.post('/adobe/_admin/update',
                          params=dict(redirect='home/HomeHome/'),
                          extra_environ=dict(username='root'))
        r = self.app.get('/adobe/')
        assert r.location.endswith('/adobe/home/HomeHome/')

    def test_admin(self):
        r = self.app.get('/adobe/_admin/', extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/update_acl',
                          params={'permission':'moderate',
                                  'new.add':'on',
                                  'new.username':'test-user'},
                          extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/update_acl',
                          params={'permission':'read',
                                  'new.username':'',
                                  'user-0.id':'',
                                  'user-0.delete':'on'},
                          extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/update',
                          params=dict(name='Mozq1', css='', homepage='# MozQ1!'),
                          extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/update',
                          params=dict(name='Mozq1', css='', homepage='# MozQ1!\n[Root]'),
                          extra_environ=dict(username='root'))

    def test_icon(self):
        file_name = 'ui-icons_454545_256x240.png'
        file_path = os.path.join(pyforge.__path__[0],'public','nf','css','forge','images',file_name)
        file_data = file(file_path).read()
        upload = ('icon', file_name, file_data)

        r = self.app.get('/adobe/_admin/', extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/update',
                          params=dict(name='Mozq1', css='', homepage='# MozQ1'),
                          extra_environ=dict(username='root'), upload_files=[upload])
        r = self.app.get('/adobe/icon')
        image = Image.open(StringIO.StringIO(r.body))
        assert image.size == (48,48)

    def test_invite(self):
        r = self.app.get('/adobe/_moderate/', extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_moderate/invite',
                          params=dict(pid='adobe-1', invite='on'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'error' in r
        r = self.app.post('/adobe/_moderate/invite',
                          params=dict(pid='no_such_user', invite='on'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'error' in r
        r = self.app.post('/adobe/_moderate/invite',
                          params=dict(pid='test', invite='on'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'invited' in r
        assert 'warning' not in r
        r = self.app.post('/adobe/_moderate/invite',
                          params=dict(pid='test', invite='on'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'warning' in r
        r = self.app.post('/adobe/_moderate/invite',
                          params=dict(pid='test', uninvite='on'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'uninvited' in r
        assert 'warning' not in r
        r = self.app.post('/adobe/_moderate/invite',
                          params=dict(pid='test', uninvite='on'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'warning' in r
        r = self.app.post('/adobe/_moderate/invite',
                          params=dict(pid='test', invite='on'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'invited' in r
        assert 'warning' not in r

    def test_evict(self):
        r = self.app.get('/adobe/_moderate/', extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_moderate/evict',
                          params=dict(pid='test'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'error' in r
        r = self.app.post('/adobe/_moderate/evict',
                          params=dict(pid='adobe-1'),
                          extra_environ=dict(username='root'))
        r = self.app.get(r.location, extra_environ=dict(username='root'))
        assert 'error' not in r

    def test_home(self):
        r = self.app.get('/adobe/')

    def test_register(self):
        r = self.app.post('/adobe/register',
                          params=dict(project_unixname='mymoz', project_name='', project_description=''),
                          extra_environ=dict(username='*anonymous'),
                          status=302)
        r = self.app.post('/adobe/register',
                          params=dict(project_unixname='foo.mymoz', project_name='', project_description=''),
                          extra_environ=dict(username='root'))
        assert r.html.find('div',{'class':'error'}).string == 'Please use only letters, numbers, and dash characters.'
        r = self.app.post('/p/register',
                          params=dict(project_unixname='test', project_name='', project_description=''),
                          extra_environ=dict(username='root'))
        assert 'error' in r.cookies_set['webflash']
        r = self.app.post('/adobe/register',
                          params=dict(project_unixname='mymoz', project_name='', project_description=''),
                          extra_environ=dict(username='root'))

    def test_neighborhood_project(self):
        r = self.app.get('/adobe/test/home/', status=302)
        r = self.app.get('/adobe/adobe-1/home/', status=200)
        r = self.app.get('/p/test/sub1/home/')
        r = self.app.get('/p/test/sub1/', status=302)
        r = self.app.get('/p/test/no-such-app/', status=404)

    def test_neighborhood_awards(self):
        file_name = 'adobe_icon.png'
        file_path = os.path.join(pyforge.__path__[0],'public','nf','images',file_name)
        file_data = file(file_path).read()
        upload = ('icon', file_name, file_data)

        r = self.app.get('/adobe/_admin/awards', extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/awards/create',
                          params=dict(short='FOO', full='A basic foo award'),
                          extra_environ=dict(username='root'), upload_files=[upload])
        r = self.app.get('/adobe/_admin/awards/FOO', extra_environ=dict(username='root'))
        r = self.app.get('/adobe/_admin/awards/FOO/icon', extra_environ=dict(username='root'))
        image = Image.open(StringIO.StringIO(r.body))
        assert image.size == (48,48)
        r = self.app.post('/adobe/_admin/awards/grant',
                          params=dict(grant='FOO', recipient='adobe-1'),
                          extra_environ=dict(username='root'))
        r = self.app.get('/adobe/_admin/awards/FOO/adobe-1', extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/awards/FOO/adobe-1/revoke',
                          extra_environ=dict(username='root'))
        r = self.app.post('/adobe/_admin/awards/FOO/delete',
                          extra_environ=dict(username='root'))

    def test_site_css(self):
        r = self.app.get('/p/site_style.css')
        assert(
"""a {color: #295d78; text-decoration: none;}""" in r)
        assert(
""".active {
	color: #272727 !important;""" in r)
        assert(
"""#header h1 a {color: #454545; text-shadow: #fff 0 1px;}""" in r)
        self.app.post('/p/_admin/update',
                          params=dict(name='Projects', css='', homepage='projects',
                          color1='#aaa', color2='#bbb', color3='#ccc', color4='#ddd'),
                          extra_environ=dict(username='root'))
        r = self.app.get('/p/site_style.css')
        assert(
"""a {color: #aaa; text-decoration: none;}""" in r)
        assert(
""".active {
	color: #bbb !important;""" in r)
        assert(
"""#header h1 a {color: #ccc; text-shadow: #fff 0 1px;}""" in r)

    def test_custom_css(self):
        r = self.app.get('/adobe/site_style.css')
        assert("body {background-color: #f00;}" not in r)
        r = self.app.post('/adobe/_admin/update',
                          params=dict(name='Adobe', css='body {background-color: #f00;}', homepage=''),
                          extra_environ=dict(username='root'))
        r = self.app.get('/adobe/site_style.css')
        assert("body {background-color: #f00;}" in r)


