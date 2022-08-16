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