require 'spec_helper.rb'

require './lib/patterns/structural/adapter/text_shape'

describe 'Adapter' do

  it 'TextShapeInterfaceAdapter' do
    adapter = Patterns::Structural::Adapter::TextShapeInterfaceAdapter.new

    expect(adapter.bounding_box(1, 2)).to eq 5
    expect(adapter.is_empty).to be_falsey

  end
end