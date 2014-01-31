#
# Cookbook Name:: cookbook_phpbox
# Recipe:: default
#

include_recipe "appbox"

include_recipe "cookbook_phpbox::users"

if node.attribute?("databox")
  if node["databox"].attribute?("databases")
    if node["databox"]["databases"]["mysql"]
      include_recipe "databox::mysql"
    end
    if node["databox"]["databases"]["postgresql"]
      include_recipe "databox::postgresql"
    end
  end
end

if node.attribute?("cookbook_phpbox")
  if node["cookbook_phpbox"].attribute?("webserver")
    if node["cookbook_phpbox"]["webserver"] == 'apache' or node["cookbook_phpbox"]["webserver"] == 'apache2'
      include_recipe "cookbook_phpbox::apache2"
    else
      include_recipe "cookbook_phpbox::nginx"
    end
  end
end

include_recipe "cookbook_phpbox::php"

if node["cookbook_phpbox"]["apps"]
  include_recipe "cookbook_phpbox::apps"
end