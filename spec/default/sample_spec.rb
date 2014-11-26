require 'spec_helper'

#describe package('httpd'), :if => os[:family] == 'redhat' do
#  it { should be_installed }
#end
#
#describe package('apache2'), :if => os[:family] == 'ubuntu' do
#  it { should be_installed }
#end
#
#describe service('httpd'), :if => os[:family] == 'redhat' do
#  it { should be_enabled }
#  it { should be_running }
#end
#
#describe service('apache2'), :if => os[:family] == 'ubuntu' do
#  it { should be_enabled }
#  it { should be_running }
#end
#
#describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
#  it { should be_enabled }
#  it { should be_running }
#end

# irbはRubyに同梱されているのでコケる
%w{gcc make git ruby rubygems-integration ruby-dev libpcap-dev libsqlite3-dev libglib2.0-dev }.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe package('ruby') do
  it { should be_installed.with_version('1.9.3') }
  #it { should be_installed }
end

describe package('trema') do
  it { should be_installed.by('gem').with_version('0.4.7') }
end

#describe port(6633) do
#  it { should be_listening }
#end
