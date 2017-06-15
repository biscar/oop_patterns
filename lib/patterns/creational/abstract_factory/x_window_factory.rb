require File.join(File.dirname(__FILE__),  '../../../window_loader')

module Patterns
  module Creational
    module AbstractFactory
      class XWindowFactory

        def make_window_imp
          XWindowImp.new
        end

      end
    end
  end
end


