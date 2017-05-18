require 'spec_helper.rb'

require './lib/patterns/structural/adapter/text_shape'

describe 'Adapter' do

  example 'Interface Adapter' do
    adapter = Patterns::Structural::Adapter::TextShapeInterfaceAdapter.new

    expect(adapter.bounding_box(1, 2)).to eq 5
    expect(adapter.is_empty).to be_falsey
    expect(adapter.create_manipulator).to eq 'created'
  end

  example 'Object Adapter' do
    adapter = Patterns::Structural::Adapter::TextShapeObjectAdapter.new(DrawingEditor::TextView.new)

    expect(adapter.bounding_box(1, 2)).to eq 5
    expect(adapter.is_empty).to be_falsey
    expect(adapter.create_manipulator).to eq 'created'
  end

end