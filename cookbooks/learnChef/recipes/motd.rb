#
# Cookbook:: learnChef
# Recipe:: motd
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file 'motd' do
	path '/home/vagrant/motd.txt'
	content ' Hello! Welcome to Chef roles'
	action :create
end

file '/home/vagrant/userName.txt' do
	action :create
  	credentials = search(:DATABASE, "id:credentials").first
 	userName = credentials["user"]
 	content "Contents retrieved, userName is : #{userName}\n"
end
