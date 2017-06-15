require File.join(File.dirname(__FILE__), 'window')

# Уточнённая абстракция
# расширяет интерфейс, определённый абстракцией
class ApplicationWindow < Window

  def draw_contents
    view.draw_on(self)
  end

end
