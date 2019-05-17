#
# Cookbook:: example
# Recipe:: customresourcedemo
#
# Copyright:: 2019, The Authors, All Rights Reserved.
example_managehttpd 'httpd' do
	homepage '<h1>Welcome to the Example Co. website!</h1>'
	action :create
end