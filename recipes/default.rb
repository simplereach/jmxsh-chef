#
# Cookbook Name:: jmxsh
# Recipe:: default
# Description:: Puts jmxsh where jmxsh needs to go
# Author:: Eric Lubow
#
# Copyright 2015, SimpleReach
#

path = node[:jmxsh][:path]
template "#{path}/jmxsh" do
  owner 'root'
  group 'root'
  mode '0755'
  source 'jmxsh.erb'
end

cookbook_file "#{path}/jmxsh.jar" do
  source "jmxsh.jar"
  mode 0744
end

cookbook_file "#{path}/active_sessions.tcl" do
  source "active_sessions.tcl"
  mode 0644
end
