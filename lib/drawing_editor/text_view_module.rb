module DrawingEditor
  module TextViewModule

    def get_origin(x, y)
      x * y
    end

    def get_extent(width, height)
      width + height
    end

    def is_empty
      false
    end

  end
end
