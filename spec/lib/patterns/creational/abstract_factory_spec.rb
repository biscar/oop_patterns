require 'spec_helper.rb'

require './lib/patterns/creational/abstract_factory/maze_game.rb'
require './lib/patterns/creational/abstract_factory/maze_factory.rb'
require './lib/patterns/creational/abstract_factory/bombed_maze_factory.rb'
require './lib/patterns/creational/abstract_factory/enchanted_maze_factory.rb'

describe 'AbstractFactory' do
  include_context 'helper'

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