require File.join(File.dirname(__FILE__), '../../../drawing_editor_loader.rb')


module Patterns
  module Structural
    module Adapter
      class TextShape < DrawingEditor::Shape
      end

      class TextShapeInterfaceAdapter < TextShape
        def bounding_box(bottom_left, top_right)

        end

        def is_empty

        end

        def create_manipulator

        end
      end



    end
  end


end
