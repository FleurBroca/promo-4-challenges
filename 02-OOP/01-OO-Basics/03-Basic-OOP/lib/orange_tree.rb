class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  attr_accessor :height, :age, :fruits

  def initialize
    @height = 0
    @age = 0
    @fruits = 0
    @death = false
  end

  def one_year_passes!
    @age += 1
    height_growth
    produce_fruits
  end

  def height_growth
    @height += 1 if @age <= 10
  end

  def dead?
    if @age >= 100
      @death = true
    elsif @age > 50
      @death = [true, false].sample
    else
      @age
    end
    return @death
  end

  def produce_fruits
    if @age < 5
      @fruits = 0
    elsif @age > 5 && @age <= 10
      @fruits = 100
    elsif @age > 10 && @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits -= 1
  end
end