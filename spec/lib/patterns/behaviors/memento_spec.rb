require 'spec_helper'

require './lib/memento_loader'

describe 'Memento' do

  Graphic = Struct.new('Graphic', :start_point, :end_point) do

    def move(delta)
      self.start_point += delta
      self.end_point += delta
    end

  end

  example 'test' do
    graphic = Graphic.new
    graphic.start_point = 1
    graphic.end_point = 2

    mover = Patterns::Behaviors::Memento::MoveCommand.new
    mover.move_command(graphic, 10)
    mover.execute

    expect(graphic.start_point).to eq(11)
    expect(graphic.end_point).to eq(12)


    mover.unexecute

    expect(graphic.start_point).to eq(1)
    expect(graphic.end_point).to eq(2)

  end
end