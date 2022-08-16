# super

# Ruby provides us with the super keyword to call methods earlier in the method lookup path. When you call super from within a method, it searches the method lookup path for a method with the same name, then invokes it. Let's see a quick example of how this works:

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog.new
sparky.speak        # => "Hello! from GoodDog class"

# In the above example, we've created a simple Animal class with a speak instance method. We then created GoodDog which subclasses Animal also with a speak instance method to override the inherited version. However, in the subclass' speak method we use super to invoke the speak method from the superclass, Animal, and then we extend the functionality by appending some text to the return value.

# Another more common way of using super is with initialize. Let's see an illustration of that:

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog.new("brown")        # => #<GoodDog:0x007fb40b1e6718 @color="brown", @name="brown">


# The interesting concept we want to explain is the use of super in the GoodDog class. In this example, we're using super with no arguments. However, the initialize method, where super is being used, takes an argument and adds a new twist to how super is invoked. Here, in addition to the default behavior, super automatically forwards the arguments that were passed to the method from which super is called (initialize method in GoodDog class). At this point, super will pass the color argument in the initialize defined in the subclass to that of the Animal superclass and invoke it. That explains the presence of @name="brown" when the bruno instance is created. Finally, the subclass' initialize continues to set the @color instance variable.

# When called with specific arguments, eg. super(a, b), the specified arguments will be sent up the method lookup chain. Let's see a quick example:

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

BadDog.new(2, "bear")        # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

BadDog.new(2, "bear")        # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">

# This is similar to our previous example, with the difference being that super takes an argument, hence the passed in argument is sent to the superclass. Consequently, in this example when a BadDog class is created, the passed in name argument ("bear") is passed to the superclass and set to the @name instance variable.

# There's one last twist. If you call super() exactly as shown -- with parentheses -- it calls the method in the superclass with no arguments at all. If you have a method in your superclass that takes no arguments, this is the safest -- and sometimes the only -- way to call it:

class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super()
    @color = color
  end
end

bear = Bear.new("black")        # => #<Bear:0x007fb40b1e6718 @color="black">

# If you forget to use the parentheses here, Ruby will raise an ArgumentError exception since the number of arguments is incorrect.