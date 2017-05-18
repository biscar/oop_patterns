require File.join(File.dirname(__FILE__), 'window_imp')

module Window
  # Concrete Implementor - конкретный реализатор
  class XWindowImp < Window::WindowImp

    def device_rect(coord1, coord2, coord3, coord4)
      coord1 + coord2 + coord3 + coord4
    end

  end
end

