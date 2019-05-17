#
# Cookbook:: learnChef
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'httpd' do
	action :install
end

template '/etc/httpd/conf/httpd.conf' do
	source 'httpd.conf.erb'
	action :create
end

cookbook_file 'saveMyInfoHTML' do
	source 'myinfo.html'
	path '/var/www/html/myinfo.html'
	action :delete
end

service 'httpd' do
	action :start
	start_command '/usr/sbin/httpd -k start'
end