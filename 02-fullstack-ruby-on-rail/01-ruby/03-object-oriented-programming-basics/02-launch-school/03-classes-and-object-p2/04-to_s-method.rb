# The to_s Method

# The to_s instance method comes built in to every class in Ruby. In fact, we have been using it all along. For example, suppose we have the GoodDog class from above, and the sparky object as well from above.

puts sparky      # => #<GoodDog:0x007fe542323320>

# What's happening here is that the puts method automatically calls to_s on its argument, which in this case is the sparky object. In other words puts sparky is equivalent to puts sparky.to_s. The reason we get this particular output lies within the to_s method in Ruby. By default, the to_s method returns the name of the object's class and an encoding of the object id.

# Note: puts method calls to_s for any argument that is not an array. For an array, it writes on separate lines the result of calling to_s on each element of the array.
# To test this, we can add a custom to_s method to our GoodDog class, overriding the default to_s that comes with Ruby.

class GoodDog
    DOG_YEARS = 7
  
    attr_accessor :name, :age
  
    def initialize(n, a)
      @name = n
      @age  = a * DOG_YEARS
    end
  
    def to_s
      "This dog's name is #{name} and it is #{age} in dog years."
    end
  end

  puts sparky      # => This dog's name is Sparky and is 28 in dog years.

#   And yes, it works! We were able to change the output by overriding the to_s instance method.

#   There's another method called p that's very similar to puts, except it doesn't call to_s on its argument; it calls another built-in Ruby instance method called inspect. The inspect method is very helpful for debugging purposes, so we don't want to override it.

p sparky         # => #<GoodDog:0x007fe54229b358 @name="Sparky", @age=28>

# This output implies that p sparky is equivalent to puts sparky.inspect.

# Besides being called automatically when using puts, another important attribute of the to_s method is that it's also automatically called in string interpolation. We've seen this before when using integers or arrays in string interpolation:

irb :001 > arr = [1, 2, 3]
#=> [1, 2, 3]
irb :002 > x = 5
#=> 5
irb :003 > "The #{arr} array doesn't include #{x}."
#=> The [1, 2, 3] array doesn't include 5.

# Here, the to_s method is automatically called on the arr array object, as well as the x integer object. We'll see if we can include our sparky object in a string interpolation:

# In summary, the to_s method is called automatically on the object when we use it with puts or when used with string interpolation. This fact may seem trivial at the moment, but knowing when to_s is called will help us understand how to read and write better OO code.

