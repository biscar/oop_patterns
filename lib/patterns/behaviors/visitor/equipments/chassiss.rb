require File.join(File.dirname(__FILE__), 'equipmentt')

class Chassiss < Equipmentt

  def accept(visitor)
    visitor.visit_chassis(self)
  end

end