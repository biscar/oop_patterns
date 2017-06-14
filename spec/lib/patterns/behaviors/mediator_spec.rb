require 'spec_helper'

require './lib/mediator_loader'

describe 'Mediator' do

  example 'test' do
    director = Patterns::Behaviors::Mediator::FontDialogDirector.new
    director.create_widgets

    director.button_ok.handle_mouse(nil)
    director.button_cancel.handle_mouse(nil)
    director.list_font.handle_mouse(nil)
    director.field_font_name.handle_mouse(nil)

    expect(director.button_ok.text).to eq('ok')
    expect(director.button_cancel.text).to eq('cancel')
    expect(director.list_font.text).to eq('font')
    expect(director.field_font_name.text).to eq('font_name')
  end
end