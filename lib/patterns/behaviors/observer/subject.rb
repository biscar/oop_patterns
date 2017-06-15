module Patterns
  module Behaviors
    module Observer
      class Subject

        def initialize(params = {})
          @observers = []
        end

        def attach(observer)
          @observers << observer
        end

        def detach(observer)
          @observers.delete(observer)
        end

        def notify
          observers.each { |obs| obs.update(self) }
        end

        private

        attr_reader :observers

      end
    end
  end
end


