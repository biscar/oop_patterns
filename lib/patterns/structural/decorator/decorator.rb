require File.join(File.dirname(__FILE__), 'components/visual_component')

module Patterns
  module Structural
    module Decorator
      class Decorator < VisualComponent

        def initialize(visual_component, params={})
          @component = visual_component

          post_initialize(params)
        end

        def post_initialize(params={})

        end

        def draw
          component.draw
        end

        def resize
          component.resize
        end

        private

        attr_reader :component

      end
    end
  end
end

