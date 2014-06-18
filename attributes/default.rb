default["cookbook_phpbox"]["php"] = true
default["cookbook_phpbox"]["webserver"] = "nginx"
default["cookbook_phpbox"]["php_packages"] = []
default["cookbook_phpbox"]["php_pears"] = []
default["cookbook_phpbox"]["default_config"]["nginx"]["template_name"] = "nginx_vhost.conf.erb"
default["cookbook_phpbox"]["default_config"]["nginx"]["template_cookbook"] = "cookbook_phpbox"
default["cookbook_phpbox"]["default_config"]["nginx"]["listen_port"] = "80"

default['cookbook_phpbox']['htpasswd']['username'] = ''
default['cookbook_phpbox']['htpasswd']['password'] = ''
default['cookbook_phpbox']['htpasswd']['path'] = ''

default["cookbook_phpbox"]["apps"]= []

default["databox"]["databases"] = {}

set['nginx']['init_style'] = "init"

default['build-essential']['compile_time'] = true

