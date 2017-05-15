module Patterns
  module Creational
    module Builder
      class MazeGame

        class << self

          def create_maze(builder)
            builder.build_maze

            builder.build_room(1)
            builder.build_room(2)
            builder.build_door(1, 2)

            builder.get_maze
          end

        end
      end

    end
  end
end
