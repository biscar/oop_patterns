require File.join(File.dirname(__FILE__), 'equipment_visitor')
require File.join(File.dirname(__FILE__), 'inventory')

module Patterns
  module Behaviors
    module Visitor
      class InventoryVisitor < EquipmentVisitor

        attr_reader :inventory

        def post_initialize(params = {})
          @inventory = Inventory.new
        end

        def power
          inventory.power
        end

        def visit_floppy_disk(floppy_disk)
          inventory.accumulate(floppy_disk)
        end

        def visit_card(card)
          inventory.accumulate(card)
        end

        def visit_chassis(chassis)
          inventory.accumulate(chassis)
        end

        def visit_bus(bus)
          inventory.accumulate(bus)
        end

      end
    end
  end
end

