module Configspec
  module Helper
    module Exec
      def backend(commands_object=nil)
        if commands_object.nil? && ! respond_to?(:commands)
          commands_object = Configspec::Commands::Base.new
        end
        instance = Configspec::Backend::Exec.instance
        instance.set_commands(commands_object || commands)
        instance
      end
    end
  end
end
