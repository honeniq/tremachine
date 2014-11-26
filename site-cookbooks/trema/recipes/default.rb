# Trema本の頃と比べて、gitと　libglib2.0-devも追加で必要になった。
%w{gcc make git ruby rubygems-integration ruby-dev irb libpcap-dev libsqlite3-dev libglib2.0-dev }.each do |pkg|
  package pkg do
    action :install
  end
end

# Tremaがruby-gemsの1.8.25に依存しているため
gem_package "rubygems-update" do
  action :install 
  version "1.8.25"
end

bash "update rubygems" do
  code "sudo update_rubygems"
end

gem_package "trema" do
  action :install
end
