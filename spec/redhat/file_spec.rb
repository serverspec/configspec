require 'spec_helper'

include SpecInfra::Helper::RedHat

describe file('tmp/file') do
  it { should contain 'This is a test' }
  its(:command) { should eq "( grep This\\ is\\ a\\ test tmp/file > /dev/null 2>&1 ) || echo This\\ is\\ a\\ test >> tmp/file" }
end
