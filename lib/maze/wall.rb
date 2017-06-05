require File.join(File.dirname(__FILE__), 'map_site')

module Maze
  class Wall < Maze::MapSite
    attr_accessor :is_common

  end
end

