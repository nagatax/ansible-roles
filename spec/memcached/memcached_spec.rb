require 'spec_helper'
require File.join( File.dirname(__FILE__), '../lib/package.rb' )

package_name = Package.getPackageName( 'memcached', os[:family], Package::NAME )
describe package(package_name) do
  it { should be_installed }
end

service_name = Package.getPackageName( 'memcached', os[:family], Package::DAEMON )
describe service(service_name) do
  it { should be_enabled }
  it { should be_running }
end

describe port(11211) do
  it { should be_listening }
end
