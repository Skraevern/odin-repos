# Accessor Methods

# What if we wanted to print out only sparky's name? We could try the code below (other code omitted):

class GoodDog
    def initialize(name)
        @name = name
    end

    def get_name 
        @name
    end

    def speak
        "#{@name} says arf!"
    end

    def set_name=(name)
        @name = name
    end
end

sparky = GoodDog.new("Sparky")
# However, we get the following error:
puts sparky.speak  # Sparky says arf!
#puts sparky.name   #=>  NoMethodError: undefined method `name' for #<GoodDog:0x007f91821239d0 @name="Sparky">

# A NoMethodError means that we called a method that doesn't exist or is unavailable to the object. If we want to access the object's name, which is stored in the @name instance variable, we have to create a method that will return the name. We can call it get_name, and its only job is to return the value in the @name instance variable.

puts sparky.speak      # Sparky says arf!
puts sparky.get_name   #Sparky

# Ok, we've added our get_name method and it should return the value of our @name instance variable. Let's run this code and see if it works.

# This is what we got back.

# It worked! We now have a getter method. But what if we wanted to change sparky's name? That's when we reach for a setter method. It looks a lot like a getter method but with one small difference. Let's add it.

# def set_name=(name)
#     @name = name
#   end

sparky2 = GoodDog.new("Sparky")
puts sparky2.speak
puts sparky2.get_name
sparky2.set_name = "Spartacus"
puts sparky2.get_name

# Sparky says arf!
# Sparky
# Spartacus

# As you can see, we've successfully changed sparky's name to the string "Spartacus". The first thing you should notice about the setter method set_name= is that Ruby gives us a special syntax to use it. To use the set_name= method normally, we would expect to do this: sparky.set_name=("Spartacus"), where the entire "set_name=" is the method name, and the string "Spartacus" is the argument being passed in to the method. Ruby recognizes that this is a setter method and allows us to use the more natural assignment syntax: sparky.set_name = "Spartacus". When you see this code, just realize there's a method called set_name= working behind the scenes, and we're just seeing some Ruby syntactical sugar.

#     Finally, as a convention, Rubyists typically want to name those getter and setter methods using the same name as the instance variable they are exposing and setting. We'll make the change to our code as well:

class GoodDog
    def initialize(name)
      @name = name
    end
  
    def name                  # This was renamed from "get_name"
      @name
    end
  
    def name=(n)              # This was renamed from "set_name="
      @name = n
    end
  
    def speak
      "#{@name} says arf!"
    end
  end
  
  sparky = GoodDog.new("Sparky")
  puts sparky.speak
  puts sparky.name            # => "Sparky"
  sparky.name = "Spartacus"
  puts sparky.name            # => "Spartacus"

#   Setter methods always return the value that is passed in as an argument, regardless of what happens inside the method. If the setter tries to return something other than the argument's value, it just ignores that attempt.

class Dog
    def name=(n)
      @name = n
      "Laddieboy"              # value will be ignored
    end
  end
  
  sparky = Dog.new()
  puts(sparky.name = "Sparky")  # returns "Sparky"

#   You'll notice that writing those getter and setter methods took up a lot of room in our program for such a simple feature. And if we had other states we wanted to track, like height or weight, the class would be even longer. Because these methods are so commonplace, Ruby has a built-in way to automatically create these getter and setter methods for us, using the attr_accessor method. Check out this refactoring of the code from above.

class GoodDog
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  
    def speak
      "#{@name} says arf!"
    end
  end
  
  sparky = GoodDog.new("Sparky")
  puts sparky.speak
  puts sparky.name            # => "Sparky"
  sparky.name = "Spartacus"
  puts sparky.name            # => "Spartacus"

#   Our output is the same! The attr_accessor method takes a symbol as an argument, which it uses to create the method name for the getter and setter methods. That one line replaced two method definitions.

# But what if we only want the getter method without the setter method? Then we would want to use the attr_reader method. It works the same way but only allows you to retrieve the instance variable. And if you only want the setter method, you can use the attr_writer method. All of the attr_* methods take Symbol objects as arguments; if there are more states you're tracking, you can use this syntax:

attr_accessor :name, :height, :weight