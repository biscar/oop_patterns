require File.join(File.dirname(__FILE__), 'map_site.rb')

module Maze
  class Room < Maze::MapSite
    attr_reader :nomer, :sides

    def initialize(params = {})
      @nomer = params[:nomer]
      @sides = {}

      post_initialize(params)
    end

    def post_initialize(params = {})
      @nomer = params[:nomer]
      @sides = {}
    end

    def get_side(direction)
      sides[direction]
    end

    def set_side(direction, map_site)
      @sides[direction] = map_site
    end

  end

end
