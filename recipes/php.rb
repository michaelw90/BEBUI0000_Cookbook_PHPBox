#
# Cookbook Name:: cookbook_phpbox
# Recipe:: php
#
# Install php
#

include_recipe "php"
include_recipe "php-fpm"

php_pear 'mysql' do
  action :install
end
