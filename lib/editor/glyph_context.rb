module Editor
  class GlyphContext

    def initialize
      @index = 0
      @fonts = []
    end

    def next(step = 1)
      @index += step
    end

    def insert(quantity = 1)
      @index = quantity
    end

    def get_font
      fonts[index]
    end

    def set_font(font, span = 1)
      (index..(index + span)).each { |index| fonts[index] = font }
    end
    attr_reader :index, :fonts
    private



  end
end

