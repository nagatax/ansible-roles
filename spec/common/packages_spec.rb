require 'spec_helper'

# Epel should exist.
describe yumrepo('epel'), :if => os[:family] == 'redhat' do
  it { should exist }
end

# Remi repository should exist.
describe yumrepo('remi'), :if => os[:family] == 'redhat' do
  it { should exist }
end

# Git should be installed.
describe package('git') do
  it { should be_installed }
end

# SELinux should be permissive.
describe selinux do
  it { should be_permissive }
end