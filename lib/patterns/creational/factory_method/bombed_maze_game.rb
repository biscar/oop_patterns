require File.join(File.dirname(__FILE__), 'maze_game')

module Patterns
  module Creational
    module FactoryMethod
      class BombedMazeGame < MazeGame

        class << self

          def make_wall
            Maze::BombedWall.new
          end

          def make_room(nomer)
            Maze::RoomWithABomb.new(nomer: nomer)
          end

        end

      end
    end
  end
end


