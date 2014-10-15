class Restaurant

  attr_reader :food_type, :price, :address, :tel, :opening_hour, :closing_hour

  def initialize(food_type, price, address, tel, opening_hour, closing_hour)
    @food_type = food_type
    @price = price
    @address = address
    @tel = tel
    @opening_hour = opening_hour
    @closing_hour = closing_hour

  end

  def is_open?
    t = Time.now
    hour = t.hour
    return hour > @opening_hour && hour < @closing_hour
  end

end

le_costes = Restaurant.new("Wordly cuisine", "More than 51€", "239, rue Saint-Honoré, 75001 Paris", "+33 1 42 44 50 25", 11, 22)
p le_costes.is_open?
