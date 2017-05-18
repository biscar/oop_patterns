require File.join(File.dirname(__FILE__), '../abstract_factory/pm_window_factory')
require File.join(File.dirname(__FILE__), '../abstract_factory/x_window_factory')

require 'singleton'

module Patterns
  module Creational
    module Singleton
      class WindowSystemFactory
        include ::Singleton

        def initialize
          self.factory =
            case ENV['WINDOWSTYLE']
            when 'pm'
              Patterns::Creational::AbstractFactory::PMWindowFactory.new
            when 'x'
              Patterns::Creational::AbstractFactory::XWindowFactory.new
            end
        end

        def make_window_imp
          factory.make_window_imp
        end

        private

        attr_accessor :factory

      end

    end
  end
end


