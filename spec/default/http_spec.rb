require 'spec_helper'

# apache がインストール済みか
describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

# apache のサービスが設定済みか
describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

# 80 port が空いているか
describe port(80) do
  it { should be_listening }
end
