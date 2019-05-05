require 'spec_helper'

# php version 7.2 がインストール済みか
describe package('php'), :if => os[:family] == 'redhat' do
  it { should be_installed.with_version('7.2') }
end

# composer がインストール済みか
describe command('which composer'), :if => os[:family] == 'redhat' do
  its(:exit_status) { should eq 0 }
end

# pear がインストール済みか
describe command('which pear'), :if => os[:family] == 'redhat' do
  its(:exit_status) { should eq 0 }
end

# pecl がインストール済みか
describe command('which pecl'), :if => os[:family] == 'redhat' do
  its(:exit_status) { should eq 0 }
end
