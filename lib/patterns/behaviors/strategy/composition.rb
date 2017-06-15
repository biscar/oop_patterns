module Patterns
  module Behaviors
    module Strategy
      class Composition

        def initialize(params = {})
          @compositor = params[:compositor]
        end

        def repair(params = {})
          break_count = compositor.compose(params)

          break_count
        end

        private

        attr_reader :compositor

      end
    end
  end
end

