class Equipment
  attr_reader :name, :power, :net_price, :discount_price

  def initialize(params = {})
    @name = params[:name]
    @power = params.fetch(:power, 0)
    @net_price = params.fetch(:net_price, 0)
    @discount_price = params.fetch(:discount_price, 0)

    post_initialize(params)
  end

  def post_initialize(params = {})

  end

end

