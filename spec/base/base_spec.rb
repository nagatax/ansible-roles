require 'spec_helper'
require File.join( File.dirname(__FILE__), '../lib/package.rb' )

describe command('localectl status | grep "System Locale"') do
  its(:stdout) { should match /ja_JP.UTF-8/ }
end

describe command('timedatectl | grep "Time zone"') do
  its(:stdout) { should match /Asia\/Tokyo/ }
end

describe package('git') do
  it { should be_installed }
end

ntp_package = Package.getPackageName( 'ntp', os[:family], Package::NAME )
describe package(ntp_package) do
  it { should be_installed}
end

ntp_service = Package.getPackageName( 'ntp', os[:family], Package::DAEMON )
describe service(ntp_service) do
  it { should be_enabled }
  it { should be_running }
end
