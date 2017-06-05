require File.join(File.dirname(__FILE__), '../../../maze_loader')
require File.join(File.dirname(__FILE__), '../abstract_factory/maze_factory')

module Patterns
  module Creational
    module Prototype
      class MazePrototypeFactory < AbstractFactory::MazeFactory

        attr_reader :prototype_maze, :prototype_wall, :prototype_room, :prototype_door

        def post_initialize(params = {})
          @prototype_maze = params[:maze]
          @prototype_wall = params[:wall]
          @prototype_room = params[:room]
          @prototype_door = params[:door]
        end

        def make_maze
          @prototype_maze.dup
        end

        def make_wall
          @prototype_wall.dup
        end

        def make_room(nomer)
          room = @prototype_room.dup
          room.post_initialize(nomer: nomer)

          room
        end

        def make_door(r1, r2)
          door = @prototype_door.dup
          door.post_initialize(room1: r1, room2: r2)

          door
        end

      end
    end
  end
end
