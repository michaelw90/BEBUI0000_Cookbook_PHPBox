#
# Cookbook Name:: cookbook_phpbox
# Recipe:: php
#
# Install php
#

include_recipe "php"
include_recipe "php-fpm"

package "php5-mysql" do
  action :install
end
