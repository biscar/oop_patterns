require 'maze_helper'

require './lib/patterns/creational/abstract_factory/maze_game'
require './lib/patterns/creational/abstract_factory/maze_factory'
require './lib/patterns/creational/abstract_factory/bombed_maze_factory'
require './lib/patterns/creational/abstract_factory/enchanted_maze_factory'

describe 'AbstractFactory' do
  include_context 'maze_helper'

  let(:game) { Patterns::Creational::AbstractFactory::MazeGame }

  example 'MazeFactory' do
    factory = Patterns::Creational::AbstractFactory::MazeFactory.new
    maze = game.create_maze(factory)

    check_rooms(maze)
  end

  example 'BombedMazeFactory' do
    factory = Patterns::Creational::AbstractFactory::EnchantedMazeFactory.new
    maze = game.create_maze(factory)

    check_rooms(maze)
  end

  example 'EnchantedMazeFactory' do
    factory = Patterns::Creational::AbstractFactory::EnchantedMazeFactory.new
    maze = game.create_maze(factory)

    check_rooms(maze)
  end

end