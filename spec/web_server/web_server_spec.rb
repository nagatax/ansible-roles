require 'spec_helper'

if os[:family] == 'redhat'
  apache_package = 'httpd'
elsif os[:family] == 'debian' || os[:family] == 'ubuntu'
  apache_package = 'apache2'
end

describe package(apache_package) do
  it { should be_installed }
end

describe service(apache_package) do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end
