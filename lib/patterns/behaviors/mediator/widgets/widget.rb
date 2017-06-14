module Patterns
  module Behaviors
    module Mediator
      module Widgets
        class Widget
          attr_reader :text

          def initialize(params = {})
            @director = params[:director]
          end

          def changed
            director.widget_changed(self)
          end

          def handle_mouse(event)
            changed
          end

          def set_text(text)
            self.text = text
          end

          private

          attr_reader :director
          attr_writer :text

        end
      end
    end
  end
end

