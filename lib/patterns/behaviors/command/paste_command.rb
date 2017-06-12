require File.join(File.dirname(__FILE__), 'command')

module Patterns
  module Behaviors
    module Command
      class PasteCommand < Patterns::Behaviors::Command::Command

        def post_initialize(params = {})
          @document = params[:document]
        end

        def execute
          document.paste
        end

        private

        attr_reader :document

      end
    end
  end

end
