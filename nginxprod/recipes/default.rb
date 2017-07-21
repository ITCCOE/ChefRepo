#
# Cookbook:: nginxprod
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
 include_recipe "apt-get"
 
package 'nginx' do
  action :install
end
cookbook_file "#{node[:nginxprod][:html_dir]}/index.html" do
  source "index.html"
  mode "0644"
end
service 'nginx' do
  action [ :enable, :start ]
end
