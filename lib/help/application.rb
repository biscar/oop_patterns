require File.join(File.dirname(__FILE__), 'help_handler')

module Help
  class Application < Help::HelpHandler

    def handle_help
      'показать список разделов справки'
    end

  end
end

