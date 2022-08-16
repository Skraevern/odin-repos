# More Modules

# We've already seen how modules can be used to mix-in common behavior into classes. Now we'll see two more uses for modules.

# The first use case we'll discuss is using modules for namespacing. In this context, namespacing means organizing similar classes under a module. In other words, we'll use modules to group related classes. Therein lies the first advantage of using modules for namespacing. It becomes easy for us to recognize related classes in our code. The second advantage is it reduces the likelihood of our classes colliding with other similarly named classes in our codebase. Here's how we do it:

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

# We call classes in a module by appending the class name to the module name with two colons(::)

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"

# The second use case for modules we'll look at is using modules as a container for methods, called module methods. This involves using modules to house other methods. This is very useful for methods that seem out of place within your code. Let's use our Mammal module to demonstrate:

module Mammal
  ...

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

# Defining methods this way within a module means we can call them directly from the module:

value = Mammal.some_out_of_place_method(4)

# We can also call such methods by doing:

value = Mammal::some_out_of_place_method(4)

# although the former is the preferred way.