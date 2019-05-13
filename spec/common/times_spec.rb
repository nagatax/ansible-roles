require 'spec_helper'
require File.join( File.dirname(__FILE__), '../lib/package.rb' )

# NTP service should be installed.
package_name = Package.getPackageName( 'ntp', os[:family], Package::NAME )
describe package(package_name) do
  it { should be_installed }
end

# NTP service should be enabled and it should be running.
service_name = Package.getPackageName( 'ntp', os[:family], Package::DAEMON )
describe service(service_name) do
  it { should be_enabled }
  it { should be_running }
end
