# encoding: utf-8
# vim: ft=ruby expandtab shiftwidth=2 tabstop=2

require 'spec_helper'
require 'yaml'
require 'shellwords'

describe file('/usr/local/share/wp-i18n/makepot.php') do
  let(:disable_sudo) { true }
  it { should be_file }
end

describe command('grunt --version') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
end

describe command('grunt-init --version') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
 end

describe file('/home/vagrant/.grunt-init/hatamoto/README.md') do
  let(:disable_sudo) { true }
  it { should be_file }
end

describe file('/home/vagrant/.grunt-init/iemoto/README.md') do
  let(:disable_sudo) { true }
  it { should be_file }
end

describe command('/usr/local/bin/phpunit --version') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
end

describe file('/tmp/wordpress/license.txt') do
  let(:disable_sudo) { true }
  it { should be_file }
end

describe command('/usr/local/bin/composer --version') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
end

describe command('~/.composer/vendor/bin/phpcs --version') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
end

# describe file('/vagrant/Movefile') do
#   let(:disable_sudo) { true }
#   it { should be_file }
# end

# describe command('wordmove help') do
#   let(:disable_sudo) { true }
#   its(:exit_status) { should eq 0 }
# end

# describe command('wpcs --version') do
#   let(:disable_sudo) { true }
#   let(:pre_command) { 'source ~/.bash_profile' }
#   its(:exit_status) { should eq 0 }
# end
