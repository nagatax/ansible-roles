require 'spec_helper'

describe command('php -v') do
  its(:stdout) { should match /PHP 7.2/ }
end

describe command('which composer') do
  its(:exit_status) { should eq 0 }
end

describe command('which pear') do
  its(:exit_status) { should eq 0 }
end

describe command('which pecl') do
  its(:exit_status) { should eq 0 }
end
