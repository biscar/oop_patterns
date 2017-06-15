require File.join(File.dirname(__FILE__), 'window_imp')

# Concrete Implementor - конкретный реализатор
class PMWindowImp < WindowImp

  def device_rect(coord1, coord2, coord3, coord4)
    (coord1 + coord2 + coord3 + coord4) / 2
  end

end
