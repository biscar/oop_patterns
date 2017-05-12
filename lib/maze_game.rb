require File.join(File.dirname(__FILE__), 'maze/door.rb')
require File.join(File.dirname(__FILE__), 'maze/map_site.rb')
require File.join(File.dirname(__FILE__), 'maze/room.rb')
require File.join(File.dirname(__FILE__), 'maze/wall.rb')
require File.join(File.dirname(__FILE__), 'maze/maze.rb')

class MazeGame

  class << self

    def create_maze

      maze = Maze::Maze.new

      r1 =  Maze::Room.new(room_no: 1)
      r2 =  Maze::Room.new(room_no: 2)
      door = Maze::Door.new(room1: r1, room2: r2)

      # aMaze->AddRoom(rl);
      # aMaze->AddRoom(r2);
      # rl->SetSide(North, new Wall);
      # rl->SetSide(East, theDoor);
      # rl->SetSide(South, new Wall);
      # rl->SetSide(West, new Wall);
      # r2->SetSide(North, new Wall);
      # r2->SetSide(East, new Wall);
      # r2->SetSide(South, new Wall);
      # r2->SetSide(West, theDoor);
    end

  end






end