#
# Cookbook Name:: cookbook_phpbox
# Recipe:: apache2
#
# Install Apache2.
#

service "nginx" do
  action :stop
end

include_recipe "apache2::default"
include_recipe "apache2::mod_fastcgi"

apache_module "alias" do
  enable true
end

apache_module "actions" do
  enable true
end