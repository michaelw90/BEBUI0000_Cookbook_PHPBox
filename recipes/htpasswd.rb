#
# Cookbook Name:: cookbook_phpbox
# Recipe:: htpasswd
#

htpasswd_username = node['cookbook_phpbox']['htpasswd']['username']
htpasswd_password = node['cookbook_phpbox']['htpasswd']['password']
htpasswd_path = node['cookbook_phpbox']['htpasswd']['path']

if htpasswd_username != '' && htpasswd_password != '' && htpasswd_path != ''

  htpasswd htpasswd_path do
    user htpasswd_username
    password htpasswd_password
    action :overwrite
  end

end