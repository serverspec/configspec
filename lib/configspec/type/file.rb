module Configspec
  module Type
    class File < Base
      def contain(line)
        backend.append(@name, line)
      end
    end
  end
end

