# Instance Methods

# Right now, our GoodDog class can't really do anything. Let's give it some behaviors.

# good_dog.rbCopy Code
class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "Arf!"
  end
end

sparky = GoodDog.new("Sparky")
sparky.speak

# When you run this program, nothing happens. This is because the speak method returned the string "Arf!", but we now need to print it out. So we should add puts in front of it, like this:

puts sparky.speak           # => Arf!

# Now, we should see that the output of our program is the string "Arf!". We told sparky to speak and he did. Now, suppose we have another GoodDog object:

fido = GoodDog.new("Fido")
puts fido.speak             # => Arf!

# Our second fido object can also perform GoodDog behaviors. Again, all objects of the same class have the same behaviors, though they contain different states; here, the differing state is the name.

# What if we wanted to not just say "Arf!", but say "Sparky says arf!"? In our instance methods, which is what all the methods are so far, we have access to instance variables. So, we can use string interpolation and change our speak method to this (other code omitted):

def speak
  "#{@name} says arf!"
end

# And now, we can expose information about the state of the object using instance methods.

puts sparky.speak           # => "Sparky says arf!"
puts fido.speak             # => "Fido says arf!"
puts sparky.inspect #<GoodDog:0x000000010430dba8 @name="Sparky">
puts fido.inspect   #<GoodDog:0x000000010430d8d8 @name="Fido">