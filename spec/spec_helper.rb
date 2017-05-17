shared_context 'helper' do

  private

  def check_rooms(maze)
    expect(maze.room(1)).not_to be_nil
    expect(maze.room(2)).not_to be_nil
  end

end