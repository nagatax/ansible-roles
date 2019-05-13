require 'spec_helper'

# Time zone should match "Asia/Tokyo".
describe command('timedatectl | grep "Time zone"') do
  its(:stdout) { should match /Asia\/Tokyo/ }
end

# System Locale should match "ja_JP.UTF-8".
describe command('localectl status | grep "System Locale"') do
  its(:stdout) { should match /ja_JP.UTF-8/ }
end

# VC Keymap should match "jp106".
describe command('localectl | grep "VC Keymap"') do
  its(:stdout) { should match /jp106/ }
end
