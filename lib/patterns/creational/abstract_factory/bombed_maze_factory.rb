require File.join(File.dirname(__FILE__), '../../../maze_loader.rb')
require File.join(File.dirname(__FILE__), 'maze_factory.rb')

module Patterns
  module Creational
    module AbstractFactory
      class BombedMazeFactory < Patterns::Creational::AbstractFactory::MazeFactory

        def make_room(nomer)
          Maze::RoomWithABomb.new(nomer: nomer)
        end

        def make_wal
          Maze::BombedWall.new
        end

      end
    end
  end
end

