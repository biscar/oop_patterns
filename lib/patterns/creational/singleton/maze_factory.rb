require File.join(File.dirname(__FILE__), '../../../maze_loader')
require File.join(File.dirname(__FILE__), '../abstract_factory/maze_factory')
require File.join(File.dirname(__FILE__), '../abstract_factory/bombed_maze_factory')
require File.join(File.dirname(__FILE__), '../abstract_factory/enchanted_maze_factory')

require 'singleton'

module Patterns
  module Creational
    module Singleton
      class MazeFactory
        include ::Singleton

        attr_reader :factory

        def initialize
          @factory =
            case ENV['MAZESTYLE']
            when 'bombed'
              Patterns::Creational::AbstractFactory::BombedMazeFactory.new
            when 'enchanted'
              Patterns::Creational::AbstractFactory::EnchantedMazeFactory.new
            else
              Patterns::Creational::AbstractFactory::MazeFactory.new
            end
        end
      end
    end
  end
end

