require File.join(File.dirname(__FILE__), 'compositor')

module Patterns
  module Behaviors
    module Strategy
      class TeXCompositor < Patterns::Behaviors::Strategy::Compositor

        def compose(params = {})
          10
        end

      end
    end
  end
end

