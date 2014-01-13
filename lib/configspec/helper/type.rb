module Configspec
  module Helper
    module Type
      types = %w( base package dockerfile file )

      types.each {|type| require "configspec/type/#{type}" }

      types.each do |type|
        define_method type do |*args|
          name = args.first
          self.class.const_get('Configspec').const_get('Type').const_get(camelize(type)).new(name)
        end
      end

      def camelize(string)
        string.split("_").each {|s| s.capitalize! }.join("")
      end
    end
  end
end
