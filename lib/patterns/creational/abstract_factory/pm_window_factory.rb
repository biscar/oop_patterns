require File.join(File.dirname(__FILE__),  '../../../window/pm_window_imp')

module Patterns
  module Creational
    module AbstractFactory
      class PMWindowFactory

        def make_window_imp
          Window::PMWindowImp.new
        end

      end

    end
  end
end


