require 'maze_helper'

require './lib/patterns/creational/abstract_factory/maze_game'
require './lib/patterns/creational/singleton/maze_factory'

describe 'Singleton' do
  include_context 'maze_helper'

  example 'Bombed' do
    ENV['MAZESTYLE'] = 'bombed'
    singleton = Patterns::Creational::Singleton::MazeFactory.instance

    maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(singleton.factory)

    check_rooms(maze)
  end

  example 'Enchanted' do
    ENV['enchanted'] = 'bombed'
    singleton = Patterns::Creational::Singleton::MazeFactory.instance

    maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(singleton.factory)

    check_rooms(maze)
  end

  example 'Simple' do
    ENV['enchanted'] = ''
    singleton = Patterns::Creational::Singleton::MazeFactory.instance

    maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(singleton.factory)

    check_rooms(maze)
  end

end