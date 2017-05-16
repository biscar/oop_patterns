module Patterns
  module Creational
    class MazeBuilder

        def initialize(params={})
          post_initialize(params)
        end

        def post_initialize(params={})
          nil
        end

        def build_maze
          nil
        end

        def build_room(nomer)
          nil
        end

        def build_door(room_from, room_to)
          nil
        end

        def get_maze
          nil
        end

      end

  end
end


