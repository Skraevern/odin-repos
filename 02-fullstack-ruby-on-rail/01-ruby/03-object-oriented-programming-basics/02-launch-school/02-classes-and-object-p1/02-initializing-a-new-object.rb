# Initializing a New Object

# We'll still use our GoodDog class from before, but we'll be removing the functionality that existed in the previous chapter and starting fresh. Let's modify the class by adding an initialize method.

class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new        # => "This object was initialized!"

# The initialize method gets called every time you create a new object. That's odd, don't we call the new method when we create an object? Yes, calling the new class method eventually leads us to the initialize instance method. We'll talk about the difference between class methods and instance methods later. In the above example, instantiating a new GoodDog object triggered the initialize method and resulted in the string being outputted. We refer to the initialize method as a constructor, because it is a special method that builds the object when a new object is instantiated. It gets triggered by the new class method.