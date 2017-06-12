require File.join(File.dirname(__FILE__), 'command')

module Patterns
  module Behaviors
    module Command
      class MacroCommand < Patterns::Behaviors::Command::Command


        def post_initialize(params = {})
          @cmds = []
        end


        def add(command)
          cmds << command
        end

        def remove(command)
          cmds.delete(command)
        end

        def execute
          cmds.each(&:execute)
        end

        private

        attr_accessor :cmds


      end
    end
  end
end


