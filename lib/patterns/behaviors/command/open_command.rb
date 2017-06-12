require File.join(File.dirname(__FILE__), 'command')
require File.join(File.dirname(__FILE__), 'document')

module Patterns
  module Behaviors
    module Command
      class OpenCommand < Patterns::Behaviors::Command::Command

        def ask_user
          'question'
        end

        def execute
          name = ask_user

          if name
            document = Patterns::Behaviors::Command::Document.new(name: name)
            document.open
          end
        end

      end

    end
  end
end


