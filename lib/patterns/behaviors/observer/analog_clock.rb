require File.join(File.dirname(__FILE__), 'observer')

module Patterns
  module Behaviors
    module Observer
      class AnalogClock < Patterns::Behaviors::Observer::Observer

        attr_reader :current_time

        def initialize(params = {})
          @subject = params[:timer]
          @subject.attach(self)
        end

        def draw
          hour = subject.get_hour
          min = subject.get_minute
          sec = subject.get_second

          @current_time = "AnalogClock = #{hour} - #{min} - #{sec}"
        end

        def update(changed_object)
          draw if subject == changed_object
        end

        private

        attr_reader :subject

      end
    end
  end
end