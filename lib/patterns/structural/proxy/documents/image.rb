require File.join(File.dirname(__FILE__), 'graphic')

class Image < Graphic

  def post_initialize(params = {})
    @file = params[:file]
  end

  private

  attr_reader :file

end

