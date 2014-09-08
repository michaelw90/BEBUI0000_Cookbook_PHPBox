#
# Cookbook Name:: cookbook_phpbox
# Recipe:: mysql

template '/etc/mysql/conf.d/mysite.cnf' do
  owner 'mysql'
  owner 'mysql'
  source 'mysite.cnf.erb'
  variables(
      :max_allowed_packet => node['cookbook_phpbox']['mysql']['max_allowed_packet']
  )
  notifies :restart, 'mysql_service[default]'
end