require './lib/patterns/behaviors/template_method/my_view'

describe 'Template Method' do

  it 'should do something' do
     my_view = MyView.new
     my_view.display

    expect(my_view.displayed).to be_truthy

  end
end