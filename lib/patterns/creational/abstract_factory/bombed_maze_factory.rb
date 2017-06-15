require File.join(File.dirname(__FILE__), '../../../maze_loader')
require File.join(File.dirname(__FILE__), 'maze_factory')

module Patterns
  module Creational
    module AbstractFactory
      class BombedMazeFactory < Patterns::Creational::AbstractFactory::MazeFactory

        def make_room(nomer)
          RoomWithABomb.new(nomer: nomer)
        end

        def make_wal
          BombedWall.new
        end

      end
    end
  end
end

