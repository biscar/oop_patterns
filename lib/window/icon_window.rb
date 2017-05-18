require File.join(File.dirname(__FILE__), 'window')

module Window

  # Уточнённая абстракция
  # расширяет интерфейс, определённый абстракцией
  class IconWindow < Window::Window::Window

    def draw_contents
      window_imp.device_bitmap('icon', 0.0, 0.0)
    end

  end
end

