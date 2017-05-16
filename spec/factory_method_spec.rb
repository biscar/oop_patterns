require './lib/patterns/creational/factory_method/bombed_maze_game.rb'
require './lib/patterns/creational/factory_method/enchanted_maze_game.rb'
require './lib/patterns/creational/factory_method/maze_game.rb'

describe 'FactoryMethod' do

  let(:game) { Patterns::Creational::FactoryMethod::MazeGame }

  example 'MazeGame' do
    game = Patterns::Creational::FactoryMethod::MazeGame
    maze = game.create_maze

    check_rooms(maze)

    require '/home/vital/dev/oop_patterns/lib/patterns/creational/factory_method/bombed_maze_game.rb'
    game = Patterns::Creational::FactoryMethod::BombedMazeGame
    maze = game.create_maze
    maze.room(1)

    require '/home/vital/dev/oop_patterns/lib/patterns/creational/factory_method/enchanted_maze_game.rb'
    game = Patterns::Creational::FactoryMethod::EnchantedMazeGame
    maze = game.create_maze
    maze.room(2)

    builder = Patterns::Creational::Builder::StandardMazeBuilder.new
    maze = game.create_maze(builder)

    check_rooms(maze)
  end

  example '' do

  end

  private

  def check_rooms(maze)
    expect(maze.room(1)).not_to be_nil
    expect(maze.room(2)).not_to be_nil
  end
end