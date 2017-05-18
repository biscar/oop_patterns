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
    end
  end
end
