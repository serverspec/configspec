require "rubygems"
require "rspec"
require "configspec/version"
require "configspec/setup"
require "configspec/helper"
require "configspec/backend"

require "configspec/commands/base"
require "configspec/commands/linux"
require "configspec/commands/redhat"

require "configspec/configuration"

include Configspec

module Configspec
  class << self
    def configuration
      Configspec::Configuration
    end
  end
end

RSpec.configure do |c|
  c.include(Configspec::Helper::Configuration)

  c.add_setting :ssh,           :default => nil
  c.add_setting :host,          :default => nil
  c.add_setting :os,            :default => nil
  c.add_setting :sudo_password, :default => nil

  Configspec.configuration.defaults.each { |k, v| c.add_setting k, :default => v }

  c.before :each do
    backend.set_example(example)
  end
end
