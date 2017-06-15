class HelpHandler

  NO_HELP_TOPIC = -1

  def initialize(params = {})
    @successor = params[:help_handler]
    @topic = params.fetch(:topic, NO_HELP_TOPIC)

    post_initialize(params)
  end

  def post_initialize(params = {})

  end

  def has_help
    topic != NO_HELP_TOPIC
  end

  def set_handler(help_handler, topic)
    @successor = help_handler
    @topic = topic
  end

  def handle_help
    if successor
      successor.handle_help
    end
  end


  private

  attr_reader :successor, :topic

end

