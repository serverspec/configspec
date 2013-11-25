module Configspec
  module Type
    class Package < Base
      def installed?
        backend.install(@name)
      end
    end
  end
end
