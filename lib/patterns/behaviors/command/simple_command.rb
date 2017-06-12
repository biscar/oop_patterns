require File.join(File.dirname(__FILE__), 'command')

module Patterns
  module Behaviors
    module Command

      class SimpleCommand < Patterns::Behaviors::Command::Command

        def post_initialize(params = {})
          @action = params[:action]
          @receiver = params[:receiver]
        end


        def execute
          receiver.send(action)
        end

        private

        attr_reader :action, :receiver

      end

    end
  end
end


