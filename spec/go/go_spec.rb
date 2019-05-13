require 'spec_helper'

# rootユーザの場合、PATHに"/usr/local/bin"が
# 登録されていないので、登録する
set :path, '/usr/local/bin:$PATH'

describe command('which go') do
  its(:exit_status) { should eq 0 }
end

describe command('go version') do
  its(:stdout) { should match /1.12.5/ }
end
