#
# Cookbook Name:: cookbook_phpbox
# Recipe:: smtp
#
# Install smtp
#

if node['cookbook_phpbox']['smtp']['username'] && node['cookbook_phpbox']['smtp']['password']

  node.set['ssmtp']['hostname'] = node['cookbook_phpbox']['smtp']['username']
  node.set['ssmtp']['root'] = node['cookbook_phpbox']['smtp']['username']
  node.set['ssmtp']['auth_username'] = node['cookbook_phpbox']['smtp']['username']
  node.set['ssmtp']['auth_password'] = node['cookbook_phpbox']['smtp']['password']
  node.set['ssmtp']['mailhub_name'] = node['cookbook_phpbox']['smtp']['mailhub_name']
  node.set['ssmtp']['mailhub_port'] = node['cookbook_phpbox']['smtp']['mailhub_port']
  node.set['ssmtp']['credential_method'] = node['cookbook_phpbox']['smtp']['credential_method']

  include_recipe "ssmtp"

  file "/etc/ssmtp/ssmtp.conf" do
    mode '0644'
    action :touch
  end

end