module Window
  # Implementor - Реализатор
  # Определяет интерфейс для классов реализации. Он не обязан точно соответствовать интерфейсу класса Abstraction.
  # На самом деле оба интерфейса могут быть совершенно различны. Обычно интерфейс класса Implementor предоставляет только
  # примитивные операции, а класс Abstraction определяет операции более высокого уровня, базирующиеся на этих примитивах.
  class WindowImp

    def device_rect(coord1, coord2, coord3, coord4)
      0
    end

    def device_bitmap(text, coord1, coord2)
      0
    end

  end
end
