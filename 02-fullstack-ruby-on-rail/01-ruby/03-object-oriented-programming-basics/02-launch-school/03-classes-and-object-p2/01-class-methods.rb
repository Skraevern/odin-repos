# Class Methods

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

# Thus far, all the methods we've created are instance methods. That is, they are methods that pertain to an instance or object of the class. There are also class level methods, called class methods. Class methods are methods we can call directly on the class itself, without having to instantiate any objects. We haven't implemented any class methods at this point, so let's do that now.

# When defining a class method, we prepend the method name with the reserved word self., like this:

# ... rest of code ommitted for brevity

def self.what_am_i         # Class method definition
    "I'm a GoodDog class!"
end

GoodDog.what_am_i          # => I'm a GoodDog class!

# Why do we need a class method for this? This example is a little contrived, but class methods are where we put functionality that does not pertain to individual objects. Objects contain state, and if we have a method that does not need to deal with states, then we can just use a class method, like our simple example. We'll take a look at a more useful example in the next section.