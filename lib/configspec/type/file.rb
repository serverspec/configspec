module Configspec
  module Type
    class File < Base
      def sourced_from?(from)
        backend.copy_file(from, @name)
      end
    end
  end
end

