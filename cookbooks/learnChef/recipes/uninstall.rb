#
# Cookbook:: learnChef
# Recipe:: uninstall
#
# Copyright:: 2019, The Authors, All Rights Reserved.
service 'httpd' do
	action :stop
	stop_command '/usr/sbin/httpd -k stop'
end

package 'httpd' do
	action :remove
end