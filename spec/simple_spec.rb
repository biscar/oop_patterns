require 'spec_helper.rb'
require './lib/maze_game.rb'

describe 'Simple' do
  include_context 'helper'

  example 'simple' do
    maze = MazeGame.create_maze

    check_rooms(maze)
  end

end