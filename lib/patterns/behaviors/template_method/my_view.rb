require File.join(File.dirname(__FILE__), 'vieww')

class MyView < Vieww

  def display
    @displayed = true
  end

end