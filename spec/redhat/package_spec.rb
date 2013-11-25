require 'spec_helper'

include Configspec::Helper::RedHat

describe package('httpd') do
  it { should be_installed }
  its(:command) { should eq "yum -y install httpd" }
end
