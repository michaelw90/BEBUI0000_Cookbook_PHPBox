#
# Cookbook Name:: cookbook_phpbox
# Recipe:: php
#
# Install php
#

include_recipe "php"

package "php5-mysql" do
  action :install
end

include_recipe "php-fpm"