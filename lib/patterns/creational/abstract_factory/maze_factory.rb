require File.join(File.dirname(__FILE__), '../../../maze_loader')

module Patterns
  module Creational
    module AbstractFactory
      class MazeFactory

        def initialize(params = {})
          post_initialize(params)
        end

        def post_initialize(params = {})
          nil
        end

        def make_maze
          Maze.new
        end

        def make_wall
          Wall.new
        end

        def make_room(nomer)
          Room.new(nomer: nomer)
        end

        def make_door(r1, r2)
          Door.new(room1: r1, room2: r2)
        end

      end
    end
  end
end

