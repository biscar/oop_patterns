require File.join(File.dirname(__FILE__), 'character')
require File.join(File.dirname(__FILE__), 'column')
require File.join(File.dirname(__FILE__), 'row')

class GlyphFactory

  def initialize
    @character = {}
  end

  def create_character(char)
    if !character[char]
      character[char] = Character.new(char: char)
    end

    character[char]
  end

  def create_row
    Row.new
  end


  def create_column
    Column.new
  end

  private

  attr_accessor :character

end

