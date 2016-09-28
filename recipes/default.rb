#
# Cookbook Name:: cookbook_phpbox
# Recipe:: default
#

include_recipe "cookbook_phpbox::users"
include_recipe "cookbook_phpbox::symlinks"

if node.attribute?("cookbook_databox")
  if node["cookbook_databox"].attribute?("databases")
    if node["cookbook_databox"]["databases"]["mysql"]
      include_recipe "cookbook_databox::mysql"
      include_recipe "cookbook_phpbox::mysql"
    end
    if node["cookbook_databox"]["databases"]["postgresql"]
      include_recipe "cookbook_databox::postgresql"
    end
  end
end

include_recipe "cookbook_phpbox::smtp"

if node.attribute?("cookbook_phpbox")
  if node["cookbook_phpbox"].attribute?("webserver")
    if node["cookbook_phpbox"]["webserver"] == 'apache' or node["cookbook_phpbox"]["webserver"] == 'apache2'
      include_recipe "cookbook_phpbox::apache2"
    else
      include_recipe "cookbook_phpbox::nginx"
    end
  end
end

if node["cookbook_phpbox"]["php"] == true
  include_recipe "cookbook_phpbox::php"
end

if node["cookbook_phpbox"]["apps"]
  include_recipe "cookbook_phpbox::apps"
end

if node['cookbook_phpbox']['mysql-cron-backup']['active']
  include_recipe "cookbook_phpbox::cron"
end

include_recipe "cookbook_phpbox::htpasswd"
