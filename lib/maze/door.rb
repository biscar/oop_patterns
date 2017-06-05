require File.join(File.dirname(__FILE__), 'map_site')

module Maze
  class Door < Maze::MapSite

    attr_reader :room1, :room2, :is_open

    def initialize(params = {})
      @room1 = params[:room1]
      @room2 = params[:room2]

      post_initialize(params)
    end

    def post_initialize(params = {})
      @room1 = params[:room1]
      @room2 = params[:room2]
    end

    def other_side_from(room)
      @room1 == room ? @room2 : @room1
    end

  end
end
