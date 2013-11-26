require 'singleton'

module Configspec
  module Backend
    class Dockerfile < Base
      def initialize
        @lines = []
        ObjectSpace.define_finalizer(self) {
          File.write("Dockerfile", @lines.join("\n"))
        }
      end

      def run_command(cmd, opts={})
        @lines << "RUN #{cmd}"
        { :stdout => nil, :stderr => nil,
          :exit_status => 0, :exit_signal => nil }
      end
    end
  end
end
