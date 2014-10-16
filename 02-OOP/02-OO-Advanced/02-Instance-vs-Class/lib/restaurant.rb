class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :name, :city
  attr_accessor :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @name = name
    @city = city
    @average_rating = 0
    @rate = []
  end

  def rate(new_rating)
    @rate << new_rating
    sum = 0
    @rate.each do |note|
      sum += note
    end
    @average_rating = sum / @rate.count
  end

  # TODO: implement #filter_by_city and #rate methods

  def self.filter_by_city(restaurants, town)
    filtered_restaurants = []
    restaurants.each do |restaurant|
      if restaurant.city == town
        filtered_restaurants << restaurant
      end
    end
    return filtered_restaurants
  end
end

bocuse = Restaurant.new("Paul Bocuse", "Lyon")
bocuse.city
bocuse.name
