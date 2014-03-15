#
# Cookbook Name:: trema
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Trema本の頃と比べて、gitと　libglib2.0-devも追加で必要になった。
%w{gcc make git ruby rubygems ruby-dev irb libpcap-dev libsqlite3-dev libglib2.0-dev }.each do |pkg|
  package pkg do
    action :install
  end
end

gem_package "trema" do
  action :install
end