require 'spec_helper'

# Check user's account
describe user('ansible') do
  it { should exist }
  it { should belong_to_group 'sys' }
  it { should have_home_directory '/home/ansible' }
  it { should have_login_shell '/bin/bash' }
end

# Check user's account
describe user('devuser') do
  it { should exist }
  it { should belong_to_group 'users' }
  it { should have_home_directory '/home/devuser' }
  it { should have_login_shell '/bin/bash' }
end
