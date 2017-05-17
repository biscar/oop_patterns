require './lib/maze_game.rb'

describe 'Simple' do

  example 'simple' do
    maze = MazeGame.create_maze

    check_rooms(maze)
  end

  private

  def check_rooms(maze)
    expect(maze.room(1)).not_to be_nil
    expect(maze.room(2)).not_to be_nil
  end

end