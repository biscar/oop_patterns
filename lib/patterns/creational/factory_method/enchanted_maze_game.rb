require File.join(File.dirname(__FILE__), 'maze_game')

module Patterns
  module Creational
    module FactoryMethod
      class EnchantedMazeGame < MazeGame

        class << self

          def make_room(nomer)
            EnchantedRoom.new(nomer: nomer)
          end

          def make_door(r1, r2)
            DoorNeedSpell.new(room1: r1, room2: r2)
          end

        end

      end
    end
  end
end


