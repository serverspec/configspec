module Configspec
  module Type
    class File < Base
      def sourced_from?(from)
        backend.copy(@name, from)
      end
    end
  end
end

