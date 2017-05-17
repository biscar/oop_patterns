require './lib/patterns/creational/factory_method/bombed_maze_game.rb'
require './lib/patterns/creational/factory_method/enchanted_maze_game.rb'
require './lib/patterns/creational/factory_method/maze_game.rb'

describe 'FactoryMethod' do

  let(:game) { Patterns::Creational::FactoryMethod::MazeGame }

  example 'MazeGame' do
    game = Patterns::Creational::FactoryMethod::MazeGame
    maze = game.create_maze

    check_rooms(maze)
  end

  example 'BombedMazeGame' do
    game = Patterns::Creational::FactoryMethod::BombedMazeGame
    maze = game.create_maze

    check_rooms(maze)
  end

  example 'EnchantedMazeGame' do
    game = Patterns::Creational::FactoryMethod::EnchantedMazeGame
    maze = game.create_maze

    check_rooms(maze)
  end

  private

  def check_rooms(maze)
    expect(maze.room(1)).not_to be_nil
    expect(maze.room(2)).not_to be_nil
  end
end