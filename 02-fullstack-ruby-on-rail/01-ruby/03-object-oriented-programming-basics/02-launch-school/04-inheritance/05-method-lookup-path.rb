# Method Lookup Path

# Now that you have a grasp on both inheritance and mixins. Let's put them both together to see how that affects the method lookup path. Recall the method lookup path is the order in which classes are inspected when you call a method. Let's take a look at the example code below.

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

puts "---Animal method lookup---"
puts Animal.ancestors

# We have three modules and one class. We've mixed in one module into the Animal class. The method lookup path is the path Ruby takes to look for a method. We can see this path with the ancestors class method

# ---Animal method lookup---
# Animal
# Walkable
# Object
# Kernel
# BasicObject

# This means that when we call a method of any Animal object, first Ruby looks in the Animal class, then the Walkable module, then the Object class, then the Kernel module, and finally the BasicObject class.

fido = Animal.new
fido.speak          # => I'm an animal, and I speak!

fido.walk                   # => I'm walking.

# Ruby first looked for the walk instance method in Animal, and not finding it there, kept looking in the next place according to our list, which is the Walkable module. It saw a walk method there, executed it, and stopped looking further.

fido.swim
  # => NoMethodError: undefined method `swim' for #<Animal:0x007f92832625b0>

#   Ruby traversed all the classes and modules in the list, and didn't find a swim method, so it threw an error.

# Let's add another class to the code above. This class will inherit from the Animal class and mix in the Swimmable and Climbable modules.

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

# ---GoodDog method lookup---
# GoodDog
# Climbable
# Swimmable
# Animal
# Walkable
# Object
# Kernel
# BasicObject

# There are several interesting things about the above output. First, this tells us that the order in which we include modules is important. Ruby actually looks at the last module we included first. This means that in the rare occurrence that the modules we mix in contain a method with the same name, the last module included will be consulted first. The second interesting thing is that the module included in the superclass made it on to the method lookup path. That means that all GoodDog objects will have access to not only Animal methods, but also methods defined in the Walkable module, as well as all other modules mixed in to any of its superclasses.

# Sometimes when you're working on a large project, it can be confusing where all these methods are coming from. By understanding the method lookup path, we can have a better idea of where and how all available methods are organized.

