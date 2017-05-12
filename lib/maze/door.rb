module Maze
  class Door

    attr_reader :room1, :room2, :is_open

    def initialize(params = {})
      @room1 = params[:room1]
      @room2 = params[:room2]
    end

    def other_side_from(room)

    end

  end
end
