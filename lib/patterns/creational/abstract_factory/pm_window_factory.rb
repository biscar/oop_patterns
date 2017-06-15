require File.join(File.dirname(__FILE__),  '../../../window_loader')

module Patterns
  module Creational
    module AbstractFactory
      class PMWindowFactory

        def make_window_imp
          PMWindowImp.new
        end

      end

    end
  end
end


