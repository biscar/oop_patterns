require File.join(File.dirname(__FILE__), 'subject')

module Patterns
  module Behaviors
    module Observer
      class ClockTimer < Patterns::Behaviors::Observer::Subject
        def get_hour
          time.hour
        end

        def get_minute
          time.min
        end

        def get_second
          time.sec
        end

        def tick
          @time = Time.now

          notify
        end

        private

        attr_reader :time

      end
    end
  end
end


