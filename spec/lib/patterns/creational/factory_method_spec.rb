require 'maze_helper'

require './lib/patterns/creational/factory_method/bombed_maze_game'
require './lib/patterns/creational/factory_method/enchanted_maze_game'
require './lib/patterns/creational/factory_method/maze_game'

describe 'FactoryMethod' do
  include_context 'maze_helper'

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

end