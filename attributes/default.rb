default["cookbook_phpbox"]["webserver"] = "nginx"
default["cookbook_phpbox"]["nginx"]["template_name"] = "nginx_vhost.conf.erb"
default["cookbook_phpbox"]["nginx"]["template_cookbook"] = "cookbook_phpbox"
default["cookbook_phpbox"]["nginx"]["listen_port"] = "80"

default["cookbook_phpbox"]["apps"]= []

default["databox"]["databases"] = {}

set['nginx']['init_style'] = "init"

