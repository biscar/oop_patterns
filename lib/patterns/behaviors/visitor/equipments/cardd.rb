require File.join(File.dirname(__FILE__), 'equipmentt')

class Cardd < Equipmentt

  def accept(visitor)
    visitor.visit_card(self)
  end

end