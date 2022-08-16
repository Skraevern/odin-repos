# Mixing in Modules

# Another way to DRY up your code in Ruby is to use modules. We've already seen a little bit of how to use modules, but we'll give a few more examples here.

# Extracting common methods to a superclass, like we did in the previous section, is a great way to model concepts that are naturally hierarchical. We gave the example of animals. We have a generic superclass called Animal that can keep all basic behavior of all animals. We can then expand on the model a little and have, perhaps, a Mammal subclass of Animal. We can imagine the entire class hierarchy to look something like the figure below.

# Possible Class Hierarchy
            #Animal
    #Fish           #Mammal
                #Cat    #Dog

# The above diagram shows what pure class based inheritance looks like. Remember the goal of this is to put the right behavior (i.e., methods) in the right class so we don't need to repeat code in multiple classes. We can imagine that all Fish objects are related to animals that live in the water, so perhaps a swim method should be in the Fish class. We can also imagine that all Mammal objects will have warm blood, so we can create a method called warm_blooded? in the Mammal class and have it return true. Therefore, the Cat and Dog objects will have access to the warm_blooded? method which is automatically inherited from Mammal by the Cat and Dog classes, but they won't have access to the methods in the Fish class.

# This type of hierarchical modeling works, to some extent, but there are always exceptions. For example, we put the swim method in the Fish class, but some mammals can swim as well. We don't want to move the swim method into Animal because not all animals swim, and we don't want to create another swim method in Dog because that violates the DRY principle. For concerns such as these, we'd like to group them into a module and then mix in that module to the classes that require those behaviors. Here's an example:

module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

sparky.swim                 # => I'm swimming!
neemo.swim                  # => I'm swimming!
paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>

# Using modules to group common behaviors allows us to build a more powerful, flexible and DRY design.

# Note: A common naming convention for Ruby is to use the "able" suffix on whatever verb describes the behavior that the module is modeling. You can see this convention with our Swimmable module. Likewise, we could name a module that describes "walking" as Walkable. Not all modules are named in this manner, however, it is quite common.

