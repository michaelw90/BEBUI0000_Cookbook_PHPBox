maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'PHP/Nginx server, ready for Capistrano deployment.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'cookbook_phpbox', 'PHP/Nginx server, ready for Capistrano deployment.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{build-essential appbox databox nginx php5-fpm}.each do |cb|
  depends cb
end