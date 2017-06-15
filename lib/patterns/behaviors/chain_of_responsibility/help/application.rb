require File.join(File.dirname(__FILE__), 'help_handler')

class Application < HelpHandler

  def handle_help
    'показать список разделов справки'
  end

end


