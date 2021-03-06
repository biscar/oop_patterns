require File.join(File.dirname(__FILE__), '../../../maze_loader')
require File.join(File.dirname(__FILE__), 'maze_builder')

module Patterns
  module Creational
    module Builder
      class StandardMazeBuilder < MazeBuilder

        def build_maze
          @current_maze = Maze.new
        end

        def build_room(nomer)
          return if @current_maze.room(nomer)

          room = Room.new(nomer: nomer)
          @current_maze.add_room(room)

          room.set_side(Direction.north, Wall.new)
          room.set_side(Direction.east, Wall.new)
          room.set_side(Direction.south, Wall.new)
          room.set_side(Direction.west, Wall.new)
        end

        def build_door(room_from, room_to)
          r1 = @current_maze.room(room_from)
          r2 = @current_maze.room(room_to)

          door = Door.new(room1: r1, room2: r2)

          common_wall = do_common_wall(r1, r2)

          r1.set_side(common_wall, door)
          r2.set_side(common_wall, door)
        end

        def get_maze
          @current_maze
        end

        private

        def do_common_wall(room1, room2)
          common_direction = nil

          room1.sides.each_pair do |direction, wall1|
            next if wall1.is_common

            wall2 = room2.sides[direction]

            next if wall2.is_common


            wall1.is_common = true
            wall2.is_common = true
            common_direction = direction
            break
          end

          common_direction
        end

      end
    end
  end
end


