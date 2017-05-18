require File.join(File.dirname(__FILE__), 'window')

module Window
  # Уточнённая абстракция
  # расширяет интерфейс, определённый абстракцией
  class ApplicationWindow < Window::Window::Window

    def draw_contents
      view.draw_on(self)
    end

  end
end
