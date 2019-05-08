require 'spec_helper'

describe yumrepo('epel') do
  it { should exist }
end

describe command('which go') do
  its(:exit_status) { should eq 0 }
end 
