# Modules

# As we mentioned earlier, modules are another way to achieve polymorphism in Ruby. A module is a collection of behaviors that is usable in other classes via mixins. A module is "mixed in" to a class using the include method invocation. Let's say we wanted our GoodDog class to have a speak method but we have other classes that we want to use a speak method with too. Here's how we'd do it.

# good_dog.rbCopy Code
module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")        # => Arf!
bob = HumanBeing.new
bob.speak("Hello!")         # => Hello!


# Note that in the above example, both the GoodDog object, which we're calling sparky, as well as the HumanBeing object, which we're calling bob, have access to the speak instance method. This is possible through "mixing in" the module Speak. It's as if we copy-pasted the speak method into the GoodDog and HumanBeing classes.