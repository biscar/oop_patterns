class Equipmentt
  attr_reader :net_price, :discount_price, :power

  def initialize(params = {})
    @name = params.fetch(:name, 'default')
    @net_price = params.fetch(:net_price, 0)
    @discount_price = params.fetch(:discount_price, 0)
    @power = params.fetch(:power, 0)
  end

  def accept(equipment_visitor)

  end

  private

  attr_reader :name

end