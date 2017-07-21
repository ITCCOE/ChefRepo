#
# Cookbook:: apt-get
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
execute "apt-get" do
 command "apt-get update -y"
end
