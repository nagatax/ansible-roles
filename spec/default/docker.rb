require 'spec_helper'

# apache がインストール済みか
describe package('docker'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

# apache のサービスが設定済みか
describe service('docker'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end
