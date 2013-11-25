module Configspec
  module Helper
    module DetectOS
      def commands
        property[:os_by_host] = {} if ! property[:os_by_host]
        host = RSpec.configuration.ssh ? RSpec.configuration.ssh.host : 'localhost'

        if property[:os_by_host][host]
          os = property[:os_by_host][host]
        else
          os = backend(Configspec::Commands::Base).check_os
          property[:os_by_host][host] = os
        end

        self.class.const_get('Configspec').const_get('Commands').const_get(os[:family]).new
      end
    end
  end
end
