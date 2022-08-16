# Instance Variables

# Now that we know how to use constructors in Ruby, let's create a new object and instantiate it with some state, like a name.

# good_dog.rbCopy Code

class GoodDog
  def initialize(name)
    @name = name
  end
end

# You'll notice something new here. The @name variable looks different because it has the @ symbol in front of it. This is called an instance variable. It is a variable that exists as long as the object instance exists and it is one of the ways we tie data to objects. It does not "die" after the initialize method is run. It "lives on", to be referenced, until the object instance is destroyed. In the above example, our initialize method is defined with one parameter: name. You can pass arguments into the initialize method through the new method. Let's create an object using the GoodDog class from above:

# Copy Code
sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

# Here, the string "Sparky" is being passed from the new method through to the initialize method, and is assigned to the local variable name. Within the constructor (i.e., the initialize method), we then set the instance variable @name to name, which results in assigning the string "Sparky" to the @name instance variable.

# From that example, we can see that instance variables are responsible for keeping track of information about the state of an object. In the above line of code, the name of the sparky object is the string "Sparky". This state for the object is tracked in the instance variable, @name. If we created another GoodDog object, for example, with fido = GoodDog.new('Fido'), then the @name instance variable for the fido object would contain the string "Fido". Every object's state is distinct, and instance variables are how we keep track.

puts sparky.inspect
#<GoodDog:0x00000001002f6600 @name="Sparky">
puts fido.inspect
#<GoodDog:0x0000000104392240 @name="Fido">