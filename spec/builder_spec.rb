require './lib/patterns/creational/builder/maze_game.rb'
require './lib/patterns/creational/builder/maze_builder.rb'
require './lib/patterns/creational/builder/standard_maze_builder.rb'

describe 'Builder' do

  let(:game) { Patterns::Creational::Builder::MazeGame }

  example 'StandardMazeBuilder' do
    builder = Patterns::Creational::Builder::StandardMazeBuilder.new
    maze = game.create_maze(builder)

    check_rooms(maze)
  end

  private

  def check_rooms(maze)
    expect(maze.room(1)).not_to be_nil
    expect(maze.room(2)).not_to be_nil
  end
end