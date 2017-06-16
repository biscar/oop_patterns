require './lib/documents_loader'
require './lib/patterns/structural/proxy/image_proxy'

describe 'Proxy' do

  example 'test' do
    path = File.join('images/proxy.png')

    text = TextDocument.new
    image = Patterns::Structural::Proxy::ImageProxy.new(image_file: path)

    text.insert(image)

    expect(image.get_extent).to eq 0

    image.load(path)

    expect(image.get_extent).to eq '.png'
  end
end