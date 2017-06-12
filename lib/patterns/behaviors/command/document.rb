module Patterns
  module Behaviors
    module Command
      class Document

        def initialize(params = {})
          @name = params[:name]
        end

        def open
          name
        end

        def paste
          name
        end

        private

        attr_reader :name

      end
    end
  end
end


