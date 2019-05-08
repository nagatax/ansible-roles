require 'spec_helper'

describe command('sudo su - && ~/.rbenv/bin/rbenv global') do
  its(:stdout) { should match /2.6.0/ }
end
