require 'spec_helper'

describe command('which go') do
  its(:exit_status) { should eq 0 }
end 
