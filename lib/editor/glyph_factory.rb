require File.join(File.dirname(__FILE__), 'character')
require File.join(File.dirname(__FILE__), 'column')
require File.join(File.dirname(__FILE__), 'row')
module Editor
  class GlyphFactory

    def initialize
      @character = {}
    end

    def create_character(char)
      if !character[char]
        character[char] = Editor::Character.new(char: char)
      end

      character[char]
    end

    def create_row
      Editor::Row.new
    end


    def create_column
      Editor::Column.new
    end

    private

    attr_accessor :character

  end
end

