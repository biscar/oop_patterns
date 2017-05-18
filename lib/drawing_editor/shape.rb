module DrawingEditor
  class Shape

    def bounding_box(bottom_left, top_right)
      bottom_left + top_right
    end

    def create_manipulator
      'created'
    end

  end
end

