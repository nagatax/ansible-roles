require 'spec_helper'

describe command('which node') do
  its(:exit_status) { should eq 0 }
end

describe command('which yarn') do
  its(:exit_status) { should eq 0 }
end
