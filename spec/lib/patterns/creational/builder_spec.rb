require 'maze_helper'

require './lib/patterns/creational/builder/maze_game'
require './lib/patterns/creational/builder/maze_builder'
require './lib/patterns/creational/builder/standard_maze_builder'

describe 'Builder' do
  include_context 'maze_helper'

  let(:game) { Patterns::Creational::Builder::MazeGame }

  example 'StandardMazeBuilder' do
    builder = Patterns::Creational::Builder::StandardMazeBuilder.new
    maze = game.create_maze(builder)

    check_rooms(maze)
  end

end