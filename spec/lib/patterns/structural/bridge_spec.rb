require './lib/window_loader'

describe 'Bridge' do

  before :each do
    Singleton.__init__(Patterns::Creational::Singleton::WindowSystemFactory)
  end

  example 'PM Window' do
    ENV['WINDOWSTYLE'] = 'pm'

    application_window = ApplicationWindow.new
    expect(application_window.draw_contents).to eq 'ApplicationWindow'
    expect(application_window.draw_rect(5, 5)).to eq 10


    icon_window = IconWindow.new
    expect(icon_window.draw_contents).to eq 0
  end

  example 'X Window' do
    ENV['WINDOWSTYLE'] = 'x'

    application_window = ApplicationWindow.new
    expect(application_window.draw_contents).to eq 'ApplicationWindow'
    expect(application_window.draw_rect(5, 5)).to eq 20

    icon_window = IconWindow.new
    expect(icon_window.draw_contents).to eq 0
  end

end