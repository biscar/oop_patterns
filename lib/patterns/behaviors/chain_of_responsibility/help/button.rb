require File.join(File.dirname(__FILE__), 'widget')

class Button < Widget

  def handle_help
    if has_help
      'справка Button'
    else
      parent.handle_help
    end
  end

end


