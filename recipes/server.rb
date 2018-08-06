#
# Cookbook:: Apache
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

remote_file '/var/www/html/boxing.jpg' do
  source 'https://upload.wikimedia.org/wikipedia/commons/6/65/Cribb_vs_Molineaux_1811.jpg'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service 'httpd' do
  action [ :enable, :start ]
end
