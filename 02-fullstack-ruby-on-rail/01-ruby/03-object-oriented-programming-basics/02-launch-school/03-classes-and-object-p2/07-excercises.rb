# Add a class method to your MyCar class that calculates the gas mileage of any car.

class MyCar
    attr_accessor :color
    attr_reader :year
    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0
    end
    def speed_up(number)
        @current_speed += number
        puts "You accelerate #{number} up"
    end
    def brake(number)
        @current_speed -= number
        puts "You brakE #{number} down"
    end
    def current_speed
        puts "You are now going at #{@current_speed}"
    end
    def shut_down
        @current_speed = 0
        puts "Turned off"
    end
    def spray_paint(color)
        self.color = color
    end
    def self.gas_mileage(gallons, miles)
        puts "#{miles / gallons} miles per gallon of gas"
    end
    def to_s
        "My car is a #{color}, #{year}, #{@model}!"
      end

end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)         #=> You accelerate 20 up
lumina.current_speed        #=> You are now going at 20
lumina.speed_up(20)         #=> You accelerate 20 up
lumina.current_speed        #=> You are now going at 40
lumina.brake(20)            #=> You brake 20 down
lumina.current_speed        #=> You are now going at 20
lumina.brake(20)            #=> You brake 20 down
lumina.current_speed        #=> You are now going at 0
lumina.shut_down            #=> Turned off
lumina.current_speed        #=> You are now going at 0

lumina.color = 'Black'
# lumina.year = 2000         #=> undefined method `year='
puts lumina.color           #=> Black
puts lumina.year

lumina.spray_paint("Orange")
puts lumina.color           #=> "Orange"

# 1. Add a class method to your MyCar class that calculates the gas mileage of any car.
MyCar.gas_mileage(13, 351)  # => "27 miles per gallon of gas"

# 2. Override the to_s method to create a user friendly print out of your object.
my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car  # => My car is a silver, 2010, Ford Focus.


class Person
    # ttr_reader :name
    attr_accessor :name
    # attr_writer :name ## => This also works but doesn't allow getter access
    def initialize(name)
      @name = name
    end
  end
  
  bob = Person.new("Steve")
  bob.name = "Bob"