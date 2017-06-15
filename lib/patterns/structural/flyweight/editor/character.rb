require File.join(File.dirname(__FILE__), 'glyph')

class Character < Glyph

  def post_initialize(params = {})
    @char_code = params[:char]
  end

  def draw(window, glyph_context)

  end

  private

  attr_reader :char_code

end

