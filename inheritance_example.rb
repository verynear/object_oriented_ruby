class Transportation
  def initialize(input_hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Transportation
  def initialize(car_attributes_hash)
    super
    @fuel = 10
    @make = car_attributes_hash[:make]
    @model = car_attributes_hash[:model]
    @year = car_attributes_hash[:year]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  def initialize(bike_attributes_hash)
    super
    @bike_speed = bike_attributes_hash[:bike_speed]
    @type = bike_attributes_hash[:type]
    @weight = bike_attributes_hash[:weight]
    @color = bike_attributes_hash[:color]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new({make: "Hyundai", model: "Sonata", year: 2003})
bike = Bike.new({bike_speed: "ten", type: "mountain", weight: 20, color: "red" })

puts car.accelerate
puts car.accelerate
car.honk_horn

puts bike.accelerate
bike.ring_bell

p car
p bike


