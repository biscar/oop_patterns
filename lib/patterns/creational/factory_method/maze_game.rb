require File.join(File.dirname(__FILE__), '../../../maze_loader')

module Patterns
  module Creational
    module FactoryMethod
      class MazeGame

        class << self

          def create_maze
            maze = make_maze

            r1 = make_room(1)
            r2 = make_room(2)

            door = make_door(r1, r2)

            maze.add_room(r1)
            maze.add_room(r2)

            r1.set_side(Direction.north, make_wall)
            r1.set_side(Direction.east, door)
            r1.set_side(Direction.south, make_wall)
            r1.set_side(Direction.west, make_wall)

            r2.set_side(Direction.north, make_wall)
            r2.set_side(Direction.east, make_wall)
            r2.set_side(Direction.south, make_wall)
            r2.set_side(Direction.west, door)

            maze
          end

          # factory methods

          def make_maze
            Maze.new
          end

          def make_room(nomer)
            Room.new(nomer: nomer)
          end

          def make_wall
            Wall.new
          end

          def make_door(r1, r2)
            Door.new(room1: r1, room2: r2)
          end

        end
      end
    end
  end
end

