require 'spec_helper'

require './lib/editor_loader'

describe 'Flyweight' do

  example 'test' do
    text = 'Object-oriented program'

    factory = Editor::GlyphFactory.new
    text.each_char { |char| factory.create_character(char) }

    gc = Editor::GlyphContext.new

    times12 = Editor::Font.new('Times-Roman-12')
    times_italic12 = Editor::Font.new('Times-Italic-12')

    gc.set_font(times12, text.size)

    expect(gc.get_font).to eq(times12)

    gc.insert(7)
    gc.set_font(times_italic12, 8)

    expect(gc.get_font).to eq(times_italic12)

    (0..text.size-1).each do |index|
      puts "Char #{index} #{text[index]}"

      gc.insert(index)
      if (7..15).include?(index)
        expect(gc.get_font).to eq(times_italic12)
      else
        expect(gc.get_font).to eq(times12)
      end
    end

  end
end