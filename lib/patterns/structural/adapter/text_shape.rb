require File.join(File.dirname(__FILE__), '../../../drawing_editor_loader.rb')


module DrawingEditor
  # Interface adapter between Shape and TextView
  class TextShape < DrawingEditor::Shape

    #include DrawingEditor::TextView

   # extend DrawingEditor::TextView

    module Foo
      def self.included base
        base.send :include, InstanceMethods
        base.extend ClassMethods
      end

      module InstanceMethods
        def bar1
          'bar1'
        end
      end

      module ClassMethods
        def bar2
          'bar2'
        end
      end
    end

    class Test
      include Foo
    end

    Test.new.bar1 # => "bar1"
    Test.bar2 # => "bar2"

    def bounding_box(bottom_left, top_right)

    end

    def is_empty

    end

    def create_manipulator

    end


  end
end
