require './lib/patterns/creational/abstract_factory/maze_game.rb'
require './lib/patterns/creational/singleton/maze_factory.rb'

describe 'Singleton' do

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

  private

  def check_rooms(maze)
    expect(maze.room(1)).not_to be_nil
    expect(maze.room(2)).not_to be_nil
  end


end