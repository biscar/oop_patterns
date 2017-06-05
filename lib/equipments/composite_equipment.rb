require File.join(File.dirname(__FILE__), 'equipment')

module Equipments
  class CompositeEquipment < Equipments::Equipment

    attr_accessor :equipments

    def post_initialize(params = {})
      self.equipments = []
    end

    def net_price
      self.equipments.map(&:net_price).sum
    end

    def power
      self.equipments.map(&:power).sum
    end

    def discount_price
      self.equipments.map(&:discount_price).sum
    end

    def add(equipment)
      self.equipments << equipment
    end

    def remove(equipment)
      self.equipments.delete(equipment)
    end


  end
end


