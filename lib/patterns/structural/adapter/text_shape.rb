require File.join(File.dirname(__FILE__), '../../../drawing_editor_loader.rb')

module Patterns
  module Structural
    module Adapter
      class TextShapeInterfaceAdapter < DrawingEditor::Shape
        # mixin is alternative of < DrawingEditor::TextViewModule
        include DrawingEditor::TextViewModule

        def bounding_box(bottom_left, top_right)
          get_origin(bottom_left, top_right) + get_extent(bottom_left, top_right)
        end

        def is_empty
          super
        end
      end

      class TextShapeObjectAdapter < DrawingEditor::Shape
        def initialize(text_view)
          @text_view = text_view
        end

        def bounding_box(bottom_left, top_right)
          text_view.get_origin(bottom_left, top_right) + text_view.get_extent(bottom_left, top_right)
        end

        def is_empty
          text_view.is_empty
        end

        private

        attr_reader :text_view
      end
    end
  end
end
