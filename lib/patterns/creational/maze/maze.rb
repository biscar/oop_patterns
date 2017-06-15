class Maze

  def initialize
    @rooms = {}
  end

  def add_room(room)
    rooms[room.nomer] = room
  end

  def room(nomer)
    rooms[nomer]
  end

  private

  attr_accessor :rooms

end

