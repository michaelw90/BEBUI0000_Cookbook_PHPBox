#
# Cookbook Name:: cookbook_phpbox
# Recipe:: cron
#

cron 'database-dump' do
  day '*'
  hour node['cookbook_phpbox']['mysql-cron-backup']['hour']
  minute node['cookbook_phpbox']['mysql-cron-backup']['minute']
  month '*'
  weekday '*'
  user 'root'
  mailto 'fred.thompson@buildempire.co.uk'
  command "mysqldump --user=#{node['cookbook_phpbox']['mysql-cron-backup']['username']} --password='#{node['cookbook_phpbox']['mysql-cron-backup']['password']}' --host='#{node['cookbook_phpbox']['mysql-cron-backup']['host']}' --add-drop-table --all-databases --skip-lock-tables | gzip > /home/apps/database_latest.sql.gz"
  action :create
end