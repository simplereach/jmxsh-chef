#
# Cookbook Name:: jmxsh
# Recipe:: default
# Description:: Puts jmxsh where jmxsh needs to go
# Author:: Eric Lubow
#
# Copyright 2015, SimpleReach
#

path = node[:jmxsh][:path]
cookbook_file "#{path}/jmxsh" do
  source "jmxsh"
  mode 0744
end

cookbook_file "#{path}/jmxsh.jar" do
  source "jmxsh.jar"
  mode 0744
end

cookbook_file "#{path}/active_sessions.tcl" do
  source "active_sessions.tcl"
  mode 0644
end
