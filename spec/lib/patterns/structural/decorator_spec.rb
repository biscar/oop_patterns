require './lib/decorator_loader'

describe 'Decorator' do

  example 'test case' do
    window = Window.new
    text_view = TextView.new

    content = Patterns::Structural::Decorator::BorderDecorator.new(Patterns::Structural::Decorator::ScrollDecorator.new(text_view),
                                                                   width: 1)
    window.set_contents(content)

    expect(content.draw).to eq 1
  end

end