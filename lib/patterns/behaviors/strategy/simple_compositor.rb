require File.join(File.dirname(__FILE__), 'compositor')

module Patterns
  module Behaviors
    module Strategy
      class SimpleCompositor < Patterns::Behaviors::Strategy::Compositor

        def compose(params = {})
          1
        end

      end
    end
  end
end
