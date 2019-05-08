require 'spec_helper'

describe command('~/.rbenv/bin/rbenv global') do
  its(:stdout) { should match /2.6.0/ }
end
