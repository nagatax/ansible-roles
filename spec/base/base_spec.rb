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

package_name = Package.getPackageName( 'ntp', os[:family], Package::NAME )
describe package(package_name) do
  it { should be_installed }
end

service_name = Package.getPackageName( 'ntp', os[:family], Package::DAEMON )
describe service(service_name) do
  it { should be_enabled }
  it { should be_running }
end
