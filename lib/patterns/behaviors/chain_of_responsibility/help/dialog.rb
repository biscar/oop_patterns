require File.join(File.dirname(__FILE__), 'widget')

class Dialog < Widget

  def post_initialize(params = {})

    #set_handler(successor, topic)
  end

  def handle_help
    if has_help
      'справка Dialog'
    else
      successor.handle_help
    end
  end

end


