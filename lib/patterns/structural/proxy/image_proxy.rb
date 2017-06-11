require File.join(File.dirname(__FILE__), '../../../documents/graphic')
require File.join(File.dirname(__FILE__), '../../../documents/image')

module Patterns
  module Structural
    module Proxy
      class ImageProxy < Documents::Graphic

        def post_initialize(params = {})
          @file_name = params[:image_file]
        end

        def get_image
           unless image
             self.image = Documents::Image.new(file: file_name)
           end

           image
        end

        def get_extent
          unless extent
            self.extent = get_image.get_extent
          end

          extent
        end

        def draw
          get_image.draw
        end

        def handle_mouse(event)
          get_image.handle_mouse(event)
        end

        def load(from)
          self.extent =  File.extname(from)
        end

        def save(to)

        end

        private

        attr_reader :file_name
        attr_accessor :image, :extent

      end
    end
  end
end
