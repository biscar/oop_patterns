require File.join(File.dirname(__FILE__), 'equipmentt')

class FloppyDiskk < Equipmentt

  def accept(visitor)
    visitor.visit_floppy_disk(self)
  end

end