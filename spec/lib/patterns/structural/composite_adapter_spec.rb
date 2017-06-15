require 'spec_helper.rb'

require './lib/equipments_loader'

describe 'Composite' do

  example 'test case' do
    cabinet = Cabinet.new(name: 'PC Cabinet')
    chassis = Chassis.new(name: 'PC Chassis')

    bus = Bus.new(name: 'MCA Bus', power: 10, net_price: 100, discount_price: 90)
    floppy = FloppyDisk.new(name: '3.5in Floppy', power: 1, net_price: 10, discount_price: 5)

    cabinet.add(chassis)

    chassis.add(bus)
    chassis.add(floppy)

    expect(cabinet.power).to eq 11
    expect(cabinet.net_price).to eq 110
    expect(cabinet.discount_price).to eq 95
  end
end