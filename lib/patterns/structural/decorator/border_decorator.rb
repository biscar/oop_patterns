require File.join(File.dirname(__FILE__), 'decorator')

module Patterns
  module Structural
    module Decorator

      class BorderDecorator < Patterns::Structural::Decorator::Decorator

        def post_initialize(params = {})
          @width = params[:width]
        end

        def draw
          super
          draw_border
        end

        private

        attr_reader :width

        def draw_border
          width
        end

      end
    end
  end
end


