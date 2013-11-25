require 'shellwords'

module Configspec
  module Commands
    class Base
      class NotImplementedError < Exception; end

      def escape(target)
        str = case target
              when Regexp
                target.source
              else
                target.to_s
              end

        Shellwords.shellescape(str)
      end

      def check_installed(package, version=nil)
        raise NotImplementedError.new
      end
    end
  end
end
