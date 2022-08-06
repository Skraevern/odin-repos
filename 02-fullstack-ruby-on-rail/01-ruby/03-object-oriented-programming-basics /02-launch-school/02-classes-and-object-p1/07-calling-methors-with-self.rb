# Calling Methods With self

# The reason our setter methods didn't work is because Ruby thought we were initializing local variables. Recall that to initialize or create new local variables, all we have to do is x = 1 or str = "hello world". It turns out that instead of calling the name=, height= and weight= setter methods, what we did was create three new local variables called name, height and weight. That's definitely not what we wanted to do.

# To disambiguate from creating a local variable, we need to use self.name= to let Ruby know that we're calling a method. So our change_info code should be updated to this:

def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

#   This tells Ruby that we're calling a setter method, not creating a local variable. To be consistent, we could also adopt this syntax for the getter methods as well, though it is not required.

def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

#   Finally, if we run our code with the updated change_info method that uses the self. syntax, our code works beautifully:

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.

# Note that prefixing self. is not restricted to just the accessor methods; you can use it with any instance method. For example, the info method is not a method given to us by attr_accessor, but we can still call it using self.info:

class GoodDog
    # ... rest of code omitted for brevity
    def some_method
      self.info
    end
  end

#   While this works, the general rule from the Ruby style guide is to "Avoid self where not required."