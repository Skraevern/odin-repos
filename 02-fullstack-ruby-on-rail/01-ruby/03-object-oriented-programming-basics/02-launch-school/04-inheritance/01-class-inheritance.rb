# In the previous chapter we talked briefly about inheritance. Inheritance is when a class inherits behavior from another class. The class that is inheriting behavior is called the subclass and the class it inherits from is called the superclass.

# We use inheritance as a way to extract common behaviors from classes that share that behavior, and move it to a superclass. This lets us keep logic in one place. Let's take a look at an example.

# Class Inheritance

# Here, we're extracting the speak method to a superclass Animal, and we use inheritance to make that behavior available to GoodDog and Cat classes.

class Animal
    def speak
      "Hello!"
    end
end
  
class GoodDog < Animal
end
  
class Cat < Animal
end
  
sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => Hello!
puts paws.speak             # => Hello!

# We use the < symbol to signify that the GoodDog class is inheriting from the Animal class. This means that all of the methods in the Animal class are available to the GoodDog class for use. We also created a new class called Cat that inherits from Animal as well. We've eliminated the speak method from the GoodDog class in order to use the speak method from Animal.

# When we run this code we see the correct output. Both classes are now using the superclass Animal's speak method.

# But what if we want to use the original speak method from the GoodDog class only. Let's add it back and see what happens.

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new

puts sparky.speak           # => Sparky says arf!
puts paws.speak             # => Hello!