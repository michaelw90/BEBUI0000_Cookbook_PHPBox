name             'cookbook_phpbox'
maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'PHP and Nginx/Apache server, ready for Capistrano deployment.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.15'

recipe 'cookbook_phpbox', 'PHP and Nginx/Apache server, ready for Capistrano deployment.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{build-essential appbox databox apache2 nginx php php-fpm}.each do |cb|
  depends cb
end