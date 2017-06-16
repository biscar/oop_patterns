module Patterns
  module Behaviors
    module Visitor
      class Inventory

        attr_reader :power

        def initialize(params = {})
          @power = 0
        end

        def accumulate(equipment)
          @power += equipment.power
        end

      end
    end
  end
end


