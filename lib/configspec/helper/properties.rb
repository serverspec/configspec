require 'configspec/properties'

module Configspec
  module Helper
    module Properties
      def property
        Configspec::Properties.instance.properties
      end
      def set_property(prop)
        Configspec::Properties.instance.properties(prop)
      end
    end
  end
end
