class Dock
  attr_reader :name, :max_rental_time, :rental_log, :revenue
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
    @revenue = 0
  end

  def revenue
    @revenue
  end

  def log_hour
    @rental_log.select do |boat_rental, boat_renter|
      boat_rental.add_hour
  end
end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    {
    :card_number => @rental_log[boat].credit_card_number,
    :amount => boat.hours_rented * boat.price_per_hour
    }
  end

  def return(boat)
    @revenue += boat.hours_rented * boat.price_per_hour
  end
# require "pry"; binding.pry
end
