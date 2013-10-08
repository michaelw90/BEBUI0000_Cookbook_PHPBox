#
# Cookbook Name:: cookbook_phpbox
# Recipe:: apps
#
# Setup nginx/php apps
#

::Chef::Recipe.send(:include, PHPBox::Helpers)

Array(node["cookbook_phpbox"]["apps"]).each_with_index do |app, index|
  app_dir      = ::File.join(node["appbox"]["apps_dir"], app["appname"], 'current')
  if node.attribute?("cookbook_phpbox")
    if node["cookbook_phpbox"].attribute?("webserver")
      if node["cookbook_phpbox"]["webserver"] == 'apache' or node["cookbook_phpbox"]["webserver"] == 'apache2'
        setup_apache_site(app, app_dir)
      else
        setup_nginx_site(app, app_dir)
      end
    end
  end
end

