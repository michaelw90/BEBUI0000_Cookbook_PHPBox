#
# Cookbook Name:: cookbook_phpbox
# Recipe:: php
#
# Install php
#

node.set['php-fpm']['pools'] = [
  {
    :name => "www",
    :listen => "127.0.0.1:9001",
    :php_options => { 'php_admin_value[sendmail_path]' => '/usr/sbin/ssmtp -t' }
  }
]

include_recipe "php"

package "php5-mysql" do
  action :install
end

package "php5-sqlite" do
  action :install
end

Array(node["cookbook_phpbox"]["php_packages"]).each_with_index do |package_name, index|
  package package_name do
    action :install
  end
end

Array(node["cookbook_phpbox"]["php_pears"]).each_with_index do |pear_name, index|
  php_pear pear_name do
    action :install
  end
end

Array(node["cookbook_phpbox"]["php_php5enmods"]).each_with_index do |mod_name, index|
  execute("php5enmod #{mod_name}") do
  end
end

include_recipe "php-fpm"