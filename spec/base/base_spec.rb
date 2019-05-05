require 'spec_helper'

describe command('localectl status | grep "System Locale"') do
  its(:stdout) { should match /ja_JP.UTF-8/  }
end

describe command('timedatectl | grep "Time zone"') do
  its(:stdout) { should match /Asia\/Tokyo/  }
end

describe package('git') do
  it { should be_installed }
end

describe service('ntpd') do
  it { should be_enabled }
  it { should be_running }
end
