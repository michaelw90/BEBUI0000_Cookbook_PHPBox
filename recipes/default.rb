#
# Cookbook Name:: cookbook_phpbox
# Recipe:: default
#

include_recipe "appbox"
include_recipe "cookbook_phpbox::nginx"

if node["cookbook_phpbox"]["apps"]
  include_recipe "cookbook_phpbox::apps"
end
