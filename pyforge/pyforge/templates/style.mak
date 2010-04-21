/* General */
h1 {font: 1.3em/1.4em Helvetica; font-weight: bold; margin: 0; padding: 0;}
h2 {font: 1.2em/1.3em Helvetica; font-weight: bold; margin: 0; padding: 0;}
h3,h4 {font: 1em/1.2em Helvetica;}
small {font: .9em/1.4em Helvetica;}

h1.title { margin: -16px -12px 5px; padding: 10px 12px; font-weight: bold;}
#content h2{margin-bottom: 0;}
#content h3 {font-weight: bold; }

hr {margin: 1em 0;}

.hide {display: none;}

a {color: ${color1}; text-decoration: none;}
a:hover {text-decoration: underline;}


.chip {height: 52px; width: 52px; padding: 1px; display: block; border: 1px solid rgb(195,195,195); font: .75em/1.2em Helvetica;}
.reverse {color: rgb(255,255,255);}


/* Search */
#search input {font-size: 1.2em;}
#search input[type=text] {width: 400px;}


/* Layout */

#content_holder{
	background-color: rgb(255,255,255);
    width: 950px;
	border: 1px solid rgb(215, 215, 215);
	border-top: none;
    -moz-box-shadow: rgba(0, 0, 0, .4) 2px 6px 5px -6px;
    -webkit-box-shadow: rgba(0, 0, 0, .4) 2px 6px 5px -6px;
    box-shadow: rgba(0, 0, 0, .4) 2px 6px 5px -6px;

}

#content{
	margin: 10px 0;
	border-left: 1px solid rgb(215, 215, 215);
    width: 799px;
}
#content.index{
    width: 944px;
    border-width: 0 1px 0 0;
}


/* View */
#grid {position: relative;}
ul.display {
	float: left;
	margin: 0;
	padding: 0;
	list-style: none;
}
ul.display li {
	float: left;
	padding: 10px 0;
	margin: 0;
	width: 100%;
	border-bottom: 1px solid ${color5};
}
ul.display li:last-child {border: none;}
ul.display li a {
	text-decoration: none;
}
ul.display li .content_block {
	padding: 0 10px;
}

ul.display li p {margin-bottom: 0 !important;}

ul.display li .content_block a img{
	padding: 5px;
	margin: 0 15px 0 0;
	float: left;
}

ul.thumb_view li{
	width: 240px;
	margin-right: 15px;
	height: 130px;
	border: none;
}

ul.thumb_view li p, ul.display li p{
	padding: 5px 5px 0 58px;
}
ul.thumb_view li .content_block a img {
	margin: 0 0 10px;
}

ul.thumb_view li h2,
ul.display li h2 {padding-left: 58px; margin-bottom: 0;}

.switch {
	position: absolute;
	top: -40px;
	right: 0;
}
.switch .ui-button,
.switch .ui-button:hover { -webkit-box-shadow: none; -moz-box-shadow: none;}


/* Table */
caption {font-weight: bold !important; background: none; font: 1.2em/1.5em Helvetica;}
table {
	padding: 0;
	border-collapse: collapse;
}
caption, tr td, tr th {text-align: left;}
tbody tr td, tbody tr th {border-top: 1px solid rgb(215,215,215);}
tfoot tr td {
	border-top: 4px solid rgb(215,215,215);
}
tbody tr.even td, tbody tr.even th {background: rgb(245,245,245);}
thead tr th {color: rgb(69,69,69);}
tbody tr td, tbody tr th {border-bottom: 1px solid rgb(215,215,215);}
thead tr th:first-child {border-left: 1px solid rgb(215,215,215);}
thead tr th:last-child {border-right: 1px solid rgb(215,215,215);}
thead tr th {
    text-shadow: rgb(255, 255, 255) 0 1px 0;
	text-transform: uppercase;
	font-weight: bold;
	font-size: .9em !important;;
    border-bottom: 1px solid rgb(215,215,215);
    border-top: 1px solid rgb(215,215,215);
	background: rgb(225,225,225);
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(235, 235, 235)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(215, 215, 215), rgb(235, 235, 235) 100%);
}

#ticket-list tr > td:first-child, #ticket-list tr > th:first-child, .forums tr > th, .forums tr > td {text-align: center;}


/* Forms */

#comment textarea, #post textarea {width: 100%;}
#comment input.title, #post input.title, input.title.wide {width: 100%;}
input.title.auto {width: auto;}
input, textarea {}
input.title {font-size: 1em !important;}
textarea {height: 100px;}
input[type="text"], input[type="password"], input.text, input.title, textarea, select {border-color: rgb(215,215,215)}
input[type="text"]:focus, input[type="password"]:focus, input.text:focus, input.title:focus, textarea:focus, select:focus {border-color: rgb(176,176,176)}
select {margin: 10px 0; width: 100%;}

#project-admin-overview .span-3 label {padding: 6px 0 11px;}
.fakeinput {padding: .5em 2px;}
.ui-tabs .ui-tabs-panel {padding: 1em .5em 0 0;}
.span-3 label, .label {display: block; text-align: right; vertical-align: middle; padding-top: 10px; padding-bottom: 25px;}
.label {text-align: left;}
fieldset {border: none; padding: 0; margin: 0;}
.width {width: inherit !important;}


/* Buttons - jquery ui */

a span.ui-icon {float: left; margin: auto;}

.ui-widget-header {border-bottom-color: rgb(215, 215, 215)}

.ui-tabs.ui-widget-content ul li {text-transform: uppercase; font-size: .9em !important;}

.ui-state-default.ui-button, .ui-widget-content .ui-state-default {
	text-shadow: rgba(255, 255, 245, 0.4) 0 1px;
	text-decoration: none;
	font: 1em/1.2em Helvetica;
	font-weight: bold;
	color: rgb(69,69,69) !important;
	border: 1px solid rgb(215,215,215);
	background: rgb(235,235,235);
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(235, 235, 235)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(235, 235, 235), rgb(255, 255, 255) 100%);
}
.ui-state-default.ui-button:active:hover, .ui-state-active.ui-button {
	text-decoration: none !important;
	color: ${color2} !important;
	text-shadow: none;
	background: rgb(215,215,215);
	box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px;
		-moz-box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px;
		-webkit-box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px;
}
.ui-button a:visited, .ui-button a:hover {color: #555 !important;}

.ui-state-default.ui-button:hover{
	text-decoration: none !important;
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(225, 225, 225)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(225, 225, 225), rgb(225, 225, 225) 100%);
}

.ui-widget-content .ui-state-active {
	text-decoration: none !important;
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(235, 235, 235)), to(rgb(205, 205, 205)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(205, 205, 205), rgb(235, 235, 235) 100%);
}
.ui-state-default.ui-button.download {
    border: 1px solid rgb(0,0,0);
	border-radius: 6px;
		-moz-border-radius: 6px;
		-webkit-border-radius: 6px;
	padding: 10px 0;
    background: rgb(66,73,79);
    color: #fff !important;
    display: block;
	font-weight: bold;
	text-shadow: none;
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(69, 69, 69)), to(rgb(0, 0, 0)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(0, 0, 0), rgb(69, 69, 69) 100%);
}


.download {width: 240px;}

/* Icons */
#icons {margin: 0; padding: 0;}
#icons li {list-style: none; float: left; margin: 5px;}


/* Lists */

/* Footer */

#footer{
	clear: both;
	padding: 1em 0;
}
#footer .foot_head{
    text-transform: uppercase;
    font-weight: bold;
}
#footer a:link, #footer a:visited, #footer a:hover, #footer a:active{
    color: ${color3};
    text-decoration: none;
}
#footer a:hover{
    text-decoration: underline;
}
#footer ul{
    margin: 0;
    padding: 0;
}
#footer li{
    list-style-type: none;
}

/* Alignment override */

.tcenter {text-align: center !important;}
.tleft {text-align: left !important;}
.tright {text-align: right !important;}
.fno {float: none !important;}
.fleft {float: left !important;}
.fcenter {margin: -1em auto 0 !important; display: block !important;}
.fright {float: right !important;}

/* Messages */

.error, .notice, .success {padding:.8em;margin-bottom:1em;border:2px solid ${color5};}
.error p, .notice p, .success p {margin: 0;}
.error {background:#FBE3E4;color:#8a1f11;border-color:#FBC2C4;}
.notice {background:#FFF6BF;color:#514721;border-color:#FFD324;}
.success {background:#E6EFC2;color:#264409;border-color:#C6D880;}
.error a {color:#8a1f11; text-decoration: underline;}
.notice a {color:#514721; text-decoration: underline;}
.success a {color:#264409; text-decoration: underline;}
.forums .error {background:#8a1f11 !important; border-color: #500;}
.forums .notice {background:#e5be20;}
.forums .success {background:#264409;}



/* Top nav */
html {background: rgb(235,235,235); margin: 0; padding: 0;}
body {
	background: rgb(235,235,235);
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(255, 255, 255, 1)), to(rgba(255, 255, 255, 0)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgba(255, 255, 255, 0), rgba(255, 255, 255, 1) 100%);
	margin: 0;
	padding: 0;
	overflow-x: hidden;
}
#mainmenu img {vertical-align: middle !important; border-right: 1px solid rgb(108,118,129); margin-right: 6px; padding-right: 5px;}
#bunker {background-color: rgb(215,215,215); position: relative; z-index: 0; color: #555;}

#mainmenu .tright {text-transform: uppercase; font-size: .9em; padding-top: .3em; }


.nav {
	color: rgb(215,215,215);
    display: block;
	background:  rgb(108,118,129);
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(255, 255, 255, .2)), to(rgba(255, 255, 255, 0)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgba(255, 255, 255, 0), rgba(255, 255, 255, .2) 100%);
	box-shadow: rgba(0, 0, 0, 0.6) 0 1px 8px;
		-moz-box-shadow: rgba(0, 0, 0, 0.6) 0 1px 8px;
		-webkit-box-shadow: rgba(0, 0, 0, 0.6) 0 1px 8px;
	padding-top: 2.5em;
}
#mainmenu a:link, #mainmenu a:visited, #mainmenu a:active{
    text-decoration: none;
    color: #fff;
}
#nav_menu a:link, #nav_menu a:visited, #nav_menu a:active{
    text-decoration: none;
    color: #555;
}
.sf_logo i {color: rgb(255,255,255); font-size: .9em; text-transform: uppercase; font-style: normal; letter-spacing: .1em; }

.sf_logo a {margin-top: 0;}
.sf_logo img {margin-right: .3em}

#mainmenu a:hover, #nav_menu a:hover{
    text-decoration: underline;
}
#mainmenu{
    border-width: 0 0 1px 0;
    margin: -2.9em 0 1em;
    overflow: hidden;
	height: 28px;
	padding-top: 8px;
}
#mainmenu .last a{
    float: right;
    margin-left: 2em;
}
#nav_menu_missing{
    height: 0;
    padding-top: 5px;
    border-width: 0 0 5px 0;
}
#nav_menu{
    height: 62px;
    padding-top: 5px;
    position: relative;
	background-color: rgb(255,255,255);
	margin-top: 10px;
	border: 1px solid rgb(215,215,215);
	border-bottom: none;
}

#nav_menu .neighborhood_icon, #nav_menu .project_icon, #nav_menu .award_icon {
    width: 32px;
    height: 32px;
    display: block;
    margin: 0 0 0 5px;
}
 #nav_menu .neighborhood .project_icon {height: 16px; width: 16px; display: inline-block; margin: 0; vertical-align: middle;}

#nav_menu .neighborhood{
    text-align: right;
    font-family: Georgia, serif;
    padding: .3em .7em .3em .5em;
	position: absolute;
	top: -1px;
	right: -1px;
	background: 1px solid rgb(255,255,255);
    border: 1px solid rgb(215,215,215);
	border-top: 1px solid rgb(255,255,255);
	border-right: 1px solid rgb(255,255,255);
	overflow: hidden;
}
#nav_menu a.neighborhood_name:link, #nav_menu a.neighborhood_name:visited, #nav_menu a.neighborhood_name:hover, #nav_menu a.neighborhood_name:active{
    color: #555;
}
#nav_menu .project_name a {
    color: #222;
    font-weight: bold;

}
#nav_menu .project_name {
    color: rgb(215,215,215);
    font-size: 1.7em;
	padding: 0 .5em 0;
	display: block;
}
#nav_menu .project{
    position: relative;
    height: 62px;
}
#nav_menu ul.nav_links{
    position: absolute;
    bottom: 0px;
    left: -41px;
    margin: 0;
    padding: 0;
    width: 950px;
      background: rgb(235,235,235);
    border: 1px solid rgb(215,215,215);
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(235, 235, 235)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(235, 235, 235), rgb(255, 255, 255) 100%);
}
#nav_menu ul.nav_links li {
	margin: 0;
	padding: 0;
    float: left;
    list-style-type: none;
}
#nav_menu ul.nav_links a:link,
#nav_menu ul.nav_links a:visited,
#nav_menu ul.nav_links a:hover,
#nav_menu ul.nav_links a:active{
    padding: 4px 7px;
    color: #222;
    display: block;
    height: 15px;
  background: rgb(235,235,235);
  border-right: 1px solid rgb(215,215,215);
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(235, 235, 235)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(235, 235, 235), rgb(255, 255, 255) 100%);
  text-transform: uppercase;
  font-weight: bold;
  font-size: .9em;
  text-shadow: rgb(255, 255, 255) 0 1px 0;
}
#nav_menu ul.nav_links a:link.active,
#nav_menu ul.nav_links a:visited.active,
#nav_menu ul.nav_links a:hover.active,
#nav_menu ul.nav_links a:active.active{
  background: #fff;
  border-bottom: 1px solid #fff;
  margin-bottom: -1px;

}
#nav_menu ul.nav_links a .ui-icon {margin: 0;}



/* Side nav */
#app-search input {
	width: 121px;
	margin: 15px 11px 12px;
	padding: 5px 2px;
}
#sidebar
{
    margin-right: 0;
}
ul#sidebarmenu
{
    width: 100%;
    padding: 0;
}
ul#sidebarmenu li {
    list-style-type: none;
    margin: 0 0 .5em;
    padding: 0;
}
ul#sidebarmenu li .nav_head{
    display: block;
    font-weight: bold;
    padding: 0 .8em 0;
}

ul#sidebarmenu li a {
    display:block;
    text-decoration: none;
    padding: .4em .5em;
    line-height: 1.6em;
     text-transform: uppercase;
	font-weight: bold;
	font-size: .9em;

}
ul#sidebarmenu li a:hover {
    text-decoration: underline;
}
ul#sidebarmenu li a.active {
  color: #222;
  display: block;
  background: rgb(235,235,235);
  border-top: 1px solid rgb(215,215,215);
  border-bottom: 1px solid rgb(215,215,215);
  text-transform: uppercase;
  font-weight: bold;
  font-size: .9em;
   text-shadow: rgb(255, 255, 255) 0 1px 0;
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(235, 235, 235)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(235, 235, 235), rgb(255, 255, 255) 100%);
}

ul#sidebarmenu li a.nav_child {
    padding-left:1.5em;
}

ul#sidebarmenu li a.nav_child2 {
    padding-left:3em;
}

#sidebar-right hr {margin: .2em 0 !important; padding: 0; background: rgb(235,235,235);}

#sidebar-right {
margin: .5em 0 1em;
 border: 1px solid rgb(215,215,215);
    position: relative;
    padding: 5px;
 }

#sidebar-right .span-2, #sidebar-right .span-3, #sidebar-right .span-4 {margin-bottom: .2em;}

.feed {margin: 1em -10px 0 0; width: 240px; border: 1px solid rgb(215,215,215);}
.feed h3 {padding: .4em .6em; background: rgb(235,235,235);
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(235, 235, 235)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(235, 235, 235), rgb(255, 255, 255) 100%);
border-bottom: 4px solid  rgb(215,215,215);}
.feed ul {margin: -.9em 0 0 0; padding: .5em 0; }
.feed li {margin: 0 .4em .5em; padding: 0 .5em .5em; list-style: none; border-bottom: 1px solid ${color6};}
.feed li:last-child {border: none;}

.feedc {margin-top: 1em; }
.feedc h3 {padding: .5em .2em; margin: 0;}
.feedc ul {margin: 0; padding: .5em 0; border-top: 4px solid ${color5};}
.feedc li {margin: 0 0 .5em; padding: 0 .5em .5em; list-style: none; border-bottom: 1px solid ${color6};}
.feedc li:last-child {border: none;}

.defaultTextActive {
    color: #a1a1a1;
    font-style: italic;
}

/* Breadcrumbs */
.breadcrumbs
{
    height: 2em;
    width: 100%;
}


.breadcrumbs ul
{ 
    height: 2em;
    list-style-type: none;
    margin: 0;
    padding: 0;
}

.breadcrumbs ul li
{ 
    float: left;
    padding-left: 0.5em;
}

.breadcrumbs ul li:before
{	
    content: "\00BB";
}

.breadcrumbs ul li.first:before
{	
    content: "";
}

/* Collapsible boxes */

.title-pane .title
{
  padding: 1px 6px;
  margin: 4px 1px 0 1px;
  font-weight:normal;
  font-size:12px;
  cursor: pointer;
}

.title-pane .content
{
    padding: .5em;
}

.title-pane.closed .content
{
    display:none;
}

/* Inline editing of content */

.editor input, .editor textarea, .editor select {margin: 0;}
.edit span.ui-icon {float: left; margin: auto; margin-right: 5px;}

.editable.viewing .editor
{
    display: none;
}

.editable.editing .viewer
{
    display: none;
}
		.edi .viewer {padding: 4px 0;}

.editable .edit
{
    float:left;
    display:none;
}

.editable
{
    position: relative;
    margin-bottom: 5px;
    padding: 2px;
}

.editable + .editable
{
    margin-top: 1em;
}

.editable:hover
{
    cursor: pointer;
}

.editable:hover .edit
{
    float:left;
    position: absolute;
    top: -0.5em;
    display:block;
    border: 1px solid rgb(215,215,215);
    background-color: ${color6};
}


.forge_comment_body{
    margin-top: .5em;
    padding: .5em;
    border: 1px solid rgb(215,215,215);
    overflow: auto;
}
.forge_comment_body .user_info{
    padding: .5em;
    border: 1px solid rgb(215,215,215);
    float: right;
    text-align: center;

}
.forge_comment_body .user_info img{
    margin: .5em;

}
.forge_comment_body .reply{
    clear: both;
}
.forge_comment_replies{
    margin-left: 1em;
}
.todo{
    background-color: rgb(215,215,215);
}
.attachment_images{
    overflow: auto;
}
.attachment_thumb{
    float: left;
    margin: .5em;
}

/* WMD WYSIWIG */

.wmd_edit {width: 510px; height: 150px; margin: 0 0 1em; float: none;}

.wmd_preview{
    border: 1px solid rgb(215,215,215);
    padding: .5em;
    width: 510px;
    margin: 0 0 2em;
    float: none;
}
.wmd_holder{
    overflow: auto;
}

.wmd_holder div div {background: none !important;}
.wmd_holder span {padding: 0 10px !important;}

/* Tags */
.tagEditor
{
	margin: 4px 0;
	padding: 0;
}

.tagEditor li
{
	display: inline;
	background-image: url(https://newforge.sf.geek.net/images/minus_small.png);
	background-color: #eef;
	background-position: right center;
	background-repeat: no-repeat;
	list-style-type: none;
	padding: 0 18px 0 6px;
	margin: 0 4px;
	cursor: pointer;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

.tagEditor li:hover
{
	background-color: ${color6};
}


/* Tickets */
.closed {color: #b35959 }
.open {color: #77b359;}
.accepted {color: rgb(69,69,69);}
 #ticket-list tr > td:first-child {text-align: center;}
 #ticket-list tr > td:first-child a {
	margin: 0 auto;
	padding: .1em .5em;
	width: 16px;
	height: 18px;
	display: block;
	border: 1px solid rgb(215,215,215);
	background: rgb{235,235,235};
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(255, 255, 255)), to(rgb(235, 235, 235)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(235, 235, 235), rgb(255, 255, 255) 100%);
 }
#ticket-list tr > td:first-child a:hover {
	margin: 0 auto;
	padding: .1em .5em;
	width: 16px;
	height: 18px;
	display: block;
	border: 1px solid rgb(215,215,215);
	background: rgb{235,235,235};
		background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(235, 235, 235)), to(rgb(255, 255, 255)));
		background-image: -moz-linear-gradient(100% 100% 90deg,rgb(255, 255, 255), rgb(235, 235, 235) 100%);
 }
#ticket-list tr > td:first-child a:active:hover, #ticket-list tr > td:first-child a:visited {
	text-decoration: none !important;
	color: ${color2} !important;
	text-shadow: none;
	background: rgb(215,215,215);
	box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px;
		-moz-box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px;
		-webkit-box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px;
}


/* Forums */
.forums {margin-bottom: 0;}
#content .forums h3 {font-size: 1em; font-weight: bold; margin: 3px 0 .1em;}
.forums tr > th:first-child, .forums tr > td:first-child, .forums tr > th:last-child, .forums tr > td:last-child {text-align: left;}
.forums tr > th:first-child, .forums tr > td:first-child {width: 60%;}

.forums tr > td:first-child .ui-button {padding: 7px 2px 7px 7px; margin: 3px 10px 4px 5px; border-width: thin !important;}


/* User Icon */

.gravatar img {border: 3px solid rgb(235,235,235);; margin-bottom: .2em; vertical-align: middle; box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 3px; -webkit-box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 3px; -moz-box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 3px;}
.gravatar.sm img {border: 2px solid rgb(235,235,235); margin: 0 .3em 0 0; vertical-align: middle; -webkit-box-shadow: none; -moz-box-shadow: none;}
.gravatar {margin: 0 0 1em; display: block;}
.gravatar.sm {margin: 0;}

/* Comments */

.assoc, .date {color: #aaa; margin-bottom: 1em;}
#project-admin-overview hr {margin: .5em;}
#newcomview, #newcomview2 {margin-top: -1em; margin-left: -3px;}
#comment, #post {margin: -1em 0 2em; position: relative;}

.arrow {
background:none repeat scroll 0 0 #FFFFFF;
color: rgb(215,215,215);
font-size:15px;
height:5px;
left:112px;
line-height:0;
position:absolute;
top:40px;
}
#comment:focus .arrow {color: rgb(176,176,176);}


/* Badges */

small.badge {

	background: rgb(69,69,69);
	color: #fff;
	padding: .1em .5em;
	margin: 0;
	-webkit-border-radius: 12px;
	-moz-border-radius: 12px;
	margin: 1em 1em .5em 0;
	display: inline-table;
	}

small.badge:hover {

	background: rgb(49,49,49);
	 -moz-box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px, rgba(255, 255, 255, 0.4) 0 1px;
  -webkit-box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px, rgba(255, 255, 255, 0.4) 0 1px;
  box-shadow: inset rgba(0, 0, 0, 0.4) 0 -5px 12px, inset rgba(0, 0, 0, 1) 0 1px 3px, rgba(255, 255, 255, 0.4) 0 1px;

	color: #fff;
	padding: .1em .5em;
	margin: 0;
	margin: 1em 1em .5em 0;
	display: inline-table;
	}

#sidebar-right small.badge {margin: 0 .5em 0 0;}


.tip {
	display:none;
	background-color: rgb(0,0,0);
	font-size:.85;
	height:1.5em;
	width:200px;
	padding:.5em 1em;
	color:#fff;
	-webkit-box-shadow: rgba(0, 0, 0, 0.5) 0px 2px 4px;
	-moz-box-shadow: rgba(0, 0, 0, 0.5) 0px 2px 4px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	text-align: center;
	border: 1px solid #111517;
}

#tippotm {	text-align: left; height:3em; padding-left: 55px; width: 130px; background-image: url('images/project-of-the-month-final.png'); background-position: 5px 50%; background-repeat: no-repeat;}

#tipcca {	text-align: left; height:3em; padding-left: 55px; width: 190px; background-image: url('images/cca.png'); background-position: 5px 50%; background-repeat: no-repeat;}

