require File.join(File.dirname(__FILE__), '../../../maze_loader')

class MazeGame

  class << self

    def create_maze
      maze = Maze.new

      r1 = Room.new(nomer: 1)
      r2 =Room.new(nomer: 2)
      door = Door.new(room1: r1, room2: r2)

      maze.add_room(r1)
      maze.add_room(r2)

      r1.set_side(Direction.north, Wall.new)
      r1.set_side(Direction.east, door)
      r1.set_side(Direction.south, Wall.new)
      r1.set_side(Direction.west, Wall.new)

      r2.set_side(Direction.north, Wall.new)
      r2.set_side(Direction.east, Wall.new)
      r2.set_side(Direction.south, Wall.new)
      r2.set_side(Direction.west, door)

      maze
    end

  end

end