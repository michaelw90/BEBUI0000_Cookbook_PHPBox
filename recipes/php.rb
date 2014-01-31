#
# Cookbook Name:: cookbook_phpbox
# Recipe:: php
#
# Install php
#

node.set['php-fpm']['pools'] = [
  {
    :name => "www",
    :listen => "127.0.0.1:9001"
  }
]

include_recipe "php"

package "php5-mysql" do
  action :install
end

package "php5-sqlite" do
  action :install
end

include_recipe "php-fpm"