#
# Cookbook Name:: cookbook_phpbox
# Recipe:: default
#

include_recipe "appbox"
include_recipe "databox"
include_recipe "cookbook_phpbox::nginx"
include_recipe "cookbook_phpbox::php"

if node["cookbook_phpbox"]["apps"]
  include_recipe "cookbook_phpbox::apps"
end
