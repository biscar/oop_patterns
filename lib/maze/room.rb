require File.join(File.dirname(__FILE__), 'map_site.rb')

module Maze
  class Room < Maze::MapSite
    attr_reader :nomer

    def initialize(params = {})
      @nomer = params[:nomer]
      @sides = {}
    end

    def get_side(direction)
      sides[direction]
    end

    def set_side(direction, map_site)
      @sides[direction] = map_site
    end

    private

    attr_reader :sides

  end

end
