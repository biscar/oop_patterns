require File.join(File.dirname(__FILE__), 'help_handler')

module Help
  class Widget < Help::HelpHandler

    def post_initialize(params = {})

      @parent = @successor
    end

    private

    attr_reader :parent

  end
end

