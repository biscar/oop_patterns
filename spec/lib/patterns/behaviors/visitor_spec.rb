require './lib/visit_loader'

describe 'Visitor' do

  example 'test' do
    bus = Buss.new(net_price: 0, discount_price: 0, power: 10)
    card = Cardd.new(net_price: 3, discount_price: 0, power: 0)
    chassis = Chassiss.new(net_price: 0, discount_price: 0, power: 100)
    floppy_disk = FloppyDiskk.new(net_price: 1, discount_price: 0, power: 0)

    inventory_visitor = Patterns::Behaviors::Visitor::InventoryVisitor.new
    inventory_visitor.visit_bus(bus)
    inventory_visitor.visit_chassis(chassis)

    expect(inventory_visitor.power).to eq(110)

    pricing_visitor = Patterns::Behaviors::Visitor::PricingVisitor.new
    pricing_visitor.visit_floppy_disk(floppy_disk)
    pricing_visitor.visit_card(card)

    expect(pricing_visitor.total).to eq(4)
  end
end

