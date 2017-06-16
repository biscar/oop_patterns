require File.join(File.dirname(__FILE__), 'equipmentt')

class Buss < Equipmentt


  def accept(visitor)
    visitor.visit_bus(self)
  end

end