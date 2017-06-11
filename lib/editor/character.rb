require File.join(File.dirname(__FILE__), 'glyph')

module Editor
  class Character < Editor::Glyph

    def post_initialize(params = {})
      @char_code = params[:char]
    end

    def draw(window, glyph_context)

    end

    private

    attr_reader :char_code

  end
end

