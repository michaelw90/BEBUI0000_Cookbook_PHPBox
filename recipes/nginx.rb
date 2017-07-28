#
# Cookbook Name:: cookbook_phpbox
# Recipe:: nginx
#
# Install Nginx from source to support custom Nginx modules in future.
#

include_recipe "nginx::source"

logrotate_app 'nginx' do
  path      ::File.join('var', 'log', 'nginx', '*.log')
  options   ['missingok', 'delaycompress', 'copytruncate', 'notifempty', 'nocreate']
  size      100000
  rotate    7
end