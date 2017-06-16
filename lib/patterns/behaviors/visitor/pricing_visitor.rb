require File.join(File.dirname(__FILE__), 'equipment_visitor')

module Patterns
  module Behaviors
    module Visitor
      class PricingVisitor < EquipmentVisitor

        attr_reader :total

        def post_initialize(params = {})
          @total = 0
        end

        def visit_floppy_disk(floppy_disk)
          @total += floppy_disk.net_price
        end

        def visit_card(card)
          @total += card.net_price
        end

        def visit_chassis(chassis)
          @total += chassis.discount_price
        end

        def visit_bus(bus)
          @total += bus.discount_price
        end

      end
    end
  end
end

