require File.join(File.dirname(__FILE__), '../../../../patterns/creational/singleton/window_system_factory')

# Abstraction - абстракция
# - определяет интерфейс абстракции
# - хранит ссылку на обьект типа Implementor
class Window

  # запросы, обрабатываемые окном
  def draw_contents
    0
  end

  def open
    0
  end

  # запросы, перенаправляемые реализации
  def draw_rect(point1, point2)
    window_imp.device_rect(point1, point2, point1, point2)
  end

  protected

  def window_imp
    Patterns::Creational::Singleton::WindowSystemFactory.instance.make_window_imp
  end

  def view
    View
  end

  private

  class View
    def self.draw_on(obj)
      obj.class.name
    end
  end

end

