require './lib/patterns/creational/prototype/maze_prototype_factory.rb'

describe 'Prototype' do

  let(:factory) {  Patterns::Creational::Prototype::MazePrototypeFactory }

  example 'Simple' do
    simple_prototype_factory = factory.new(maze: Maze::Maze.new, wall: Maze::Wall.new , door: Maze::Door.new , room: Maze::Room.new)
    maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(simple_prototype_factory)

    check_rooms(maze)
  end

  example 'Bombed' do
    bombed_prototype_factory = factory.new(maze: Maze::Maze.new, wall: Maze::BombedWall.new , door: Maze::Door.new , room: Maze::RoomWithABomb.new)
    maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(bombed_prototype_factory)

    check_rooms(maze)
  end

  private

  def check_rooms(maze)
    expect(maze.room(1)).not_to be_nil
    expect(maze.room(2)).not_to be_nil
  end

end