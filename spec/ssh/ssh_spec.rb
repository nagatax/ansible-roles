require 'spec_helper'

describe package('openssh-server') do
  it { should be_installed }
end

describe service('sshd') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/ssh/sshd_config') do
  #its(:content) { should match /^Port 22/ }
  its(:content) { should_not match /^PasswordAuthentication yes/  }
end
