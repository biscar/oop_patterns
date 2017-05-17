require 'spec_helper.rb'

require './lib/patterns/creational/builder/maze_game.rb'
require './lib/patterns/creational/builder/maze_builder.rb'
require './lib/patterns/creational/builder/standard_maze_builder.rb'

describe 'Builder' do
  include_context 'helper'

  let(:game) { Patterns::Creational::Builder::MazeGame }

  example 'StandardMazeBuilder' do
    builder = Patterns::Creational::Builder::StandardMazeBuilder.new
    maze = game.create_maze(builder)

    check_rooms(maze)
  end

end