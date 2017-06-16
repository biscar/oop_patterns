require 'maze_helper'

require './lib/patterns/creational/prototype/maze_prototype_factory'

describe 'Prototype' do
  include_context 'maze_helper'

  let(:factory) {  Patterns::Creational::Prototype::MazePrototypeFactory }

  example 'Simple' do
    simple_prototype_factory = factory.new(maze: Maze.new, wall: Wall.new , door: Door.new , room: Room.new)
    maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(simple_prototype_factory)

    check_rooms(maze)
  end

  example 'Bombed' do
    bombed_prototype_factory = factory.new(maze: Maze.new, wall: BombedWall.new , door: Door.new , room: RoomWithABomb.new)
    maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(bombed_prototype_factory)

    check_rooms(maze)
  end

end