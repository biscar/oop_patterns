module Patterns
  module Creational
    module AbstractFactory
      class MazeGame

        class << self

          def create_maze(factory)
            maze = factory.make_maze

            r1 = factory.make_room(1)
            r2 = factory.make_room(2)
            door = factory.make_door(r1, r2)

            maze.add_room(r1)
            maze.add_room(r2)

            r1.set_side(Maze::Direction.north, factory.make_wall)
            r1.set_side(Maze::Direction.east, door)
            r1.set_side(Maze::Direction.south, factory.make_wall)
            r1.set_side(Maze::Direction.west, factory.make_wall)

            r2.set_side(Maze::Direction.north, factory.make_wall)
            r2.set_side(Maze::Direction.east,  factory.make_wall)
            r2.set_side(Maze::Direction.south, factory.make_wall)
            r2.set_side(Maze::Direction.west, door)

            maze
          end

        end
      end

    end
  end
end
