require 'singleton'

module Configspec
  class Properties
    include Singleton
    def initialize
      @prop = {}
    end
    def properties(prop=nil)
      if ! prop.nil?
        @prop = prop
      end
      @prop
    end
  end
end

