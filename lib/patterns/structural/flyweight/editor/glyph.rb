class Glyph

  def initialize(params = {})

    post_initialize(params = {})
  end

  def post_initialize(params = {})

  end

  def draw(window, glyph_context)

  end

  def get_font(glyph_context)
    glyph_context.get_font
  end

  def first(glyph_context)

  end

  def next(glyph_context)
    glyph_context.next
  end

  def is_done(glyph_context)

  end

  def current(glyph_context)

  end

  def insert(glyph, glyph_context)

  end

  def remove(glyph_context)

  end

end
