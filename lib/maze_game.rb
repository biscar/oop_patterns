require File.join(File.dirname(__FILE__), 'maze/door.rb')
require File.join(File.dirname(__FILE__), 'maze/room.rb')
require File.join(File.dirname(__FILE__), 'maze/wall.rb')
require File.join(File.dirname(__FILE__), 'maze/maze.rb')
require File.join(File.dirname(__FILE__), 'maze/direction.rb')

class MazeGame

  class << self

    def create_maze
      maze = Maze::Maze.new

      r1 = Maze::Room.new(room_no: 1)
      r2 = Maze::Room.new(room_no: 2)
      door = Maze::Door.new(room1: r1, room2: r2)

      maze.add_room(r1)
      maze.add_room(r2)

      r1.set_side(Maze::Direction.north, Maze::Wall.new)
      r1.set_side(Maze::Direction.east, door)
      r1.set_side(Maze::Direction.south, Maze::Wall.new)
      r1.set_side(Maze::Direction.west, Maze::Wall.new)

      r2.set_side(Maze::Direction.north, Maze::Wall.new)
      r2.set_side(Maze::Direction.east,  Maze::Wall.new)
      r2.set_side(Maze::Direction.south, Maze::Wall.new)
      r2.set_side(Maze::Direction.west, door)

      maze
    end

  end






end