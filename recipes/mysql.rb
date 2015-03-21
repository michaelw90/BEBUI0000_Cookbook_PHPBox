#
# Cookbook Name:: cookbook_phpbox
# Recipe:: mysql

# Setup the configuration file
mysql_config 'default' do
  cookbook 'cookbook_phpbox'
  source 'mysite.cnf.erb'
  variables(
    :max_allowed_packet => node['cookbook_phpbox']['mysql']['max_allowed_packet']
  )
  notifies :restart, 'mysql_service[default]'
  action :create
end