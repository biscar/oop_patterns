module Maze
  class Maze

    def initialize
      @rooms = []
    end

    def add_room(room)
      rooms.push(room) unless has_room(room)
    end

    def room(nomer)
      rooms[nomer]
    end

    private

    attr_accessor :rooms

    def has_room(room)
      rooms.include?(room)
    end

  end
end

