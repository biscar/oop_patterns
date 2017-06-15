require File.join(File.dirname(__FILE__), 'compositor')

module Patterns
  module Behaviors
    module Strategy
      class ArrayCompositor < Patterns::Behaviors::Strategy::Compositor

        def post_initialize(params = {})
          @interval = params.fetch(:interval, 100)
        end

        def compose(params = {})
          20
        end


        private

        attr_reader :interval

      end
    end
  end
end


