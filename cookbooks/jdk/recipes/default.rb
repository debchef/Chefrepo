#
# Cookbook:: jdk
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
include_recipe "tar::default"

tar_extract '/vagrant/jdk-8u211-linux-i586.tar.gz' do
	action :extract_local
	target_dir '/home/vagrant'
	creates '/home/vagrant/jdk1.8.0_211'
end