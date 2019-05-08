require 'spec_helper'

describe file('/usr/local/bin/minio') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/local/bin/mc') do
  it { should be_file }
  it { should be_executable }
end
