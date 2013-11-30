module Configspec
  module Type
    class Dockerfile < Base
      def from?(base)
        backend.from(base)
      end

      def to_s
        "Dockerfile"
      end
    end
  end
end
