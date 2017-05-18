require File.join(File.dirname(__FILE__),  '../../../window/x_window_imp')

module Patterns
  module Creational
    module AbstractFactory
      class XWindowFactory

        def make_window_imp
          Window::XWindowImp.new
        end

      end
    end
  end
end


