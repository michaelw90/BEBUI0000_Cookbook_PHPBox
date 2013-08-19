default["cookbook_phpbox"]["default_config"]["nginx"]["template_name"] = "nginx_vhost.conf.erb"
default["cookbook_phpbox"]["default_config"]["nginx"]["template_cookbook"] = "cookbook_phpbox"
default["cookbook_phpbox"]["default_config"]["nginx"]["listen_port"] = "80"

default["cookbook_phpbox"]["apps"]= []

set['nginx']['init_style'] = "init"

