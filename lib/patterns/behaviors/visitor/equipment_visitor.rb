module Patterns
  module Behaviors
    module Visitor
      class EquipmentVisitor

        def initialize(params = {})
          post_initialize(params)
        end

        def post_initialize(params = {})

        end

        def visit_floppy_disk(floppy_disk)

        end

        def visit_card(card)

        end

        def visit_chassis(chassis)

        end

        def visit_bus(bus)

        end

      end
    end
  end
end




