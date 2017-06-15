require 'spec_helper'

require './lib/strategy_loader'

describe 'Strategy' do

  example 'test' do

    quick = Patterns::Behaviors::Strategy::Composition.new(compositor: Patterns::Behaviors::Strategy::SimpleCompositor.new)
    slick = Patterns::Behaviors::Strategy::Composition.new(compositor: Patterns::Behaviors::Strategy::TeXCompositor.new)
    iconic = Patterns::Behaviors::Strategy::Composition.new(compositor: Patterns::Behaviors::Strategy::ArrayCompositor.new)


    expect(quick.repair).to eq(1)
    expect(slick.repair).to eq(10)
    expect(iconic.repair).to eq(20)


  end

end