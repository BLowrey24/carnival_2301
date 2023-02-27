class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue,
              :ride_log

  def initialize(ride_info)
    @name = ride_info[:name]
    @min_height = ride_info[:min_height]
    @admission_fee = ride_info[:admission_fee]
    @excitement = ride_info[:excitement]
    @total_revenue = 0
    @ride_log = []
  end

  def board_rider(visitor)
    if visitor.height >= min_height && visitor.spending_money >= admission_fee && visitor.preferences.include?(excitement)
      @ride_log << visitor unless ride_log.include?(visitor)
      visitor.spending_money -= admission_fee
      @total_revenue += admission_fee
    end
  end
end
