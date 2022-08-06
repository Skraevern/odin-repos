# Accessor Methods in Action

# With getter and setter methods, we have a way to expose and change an object's state. We can also use these methods from within the class as well. In the previous section, the speak method referenced the @name instance variable, like below:

def speak
    "#{@name} says arf!"
  end

# Instead of referencing the instance variable directly, we want to use the name getter method that we created earlier, and that is given to us now by attr_accessor. We'll change the speak method to this:

def speak
    "#{name} says arf!"
  end

# Can you spot the change? By removing the @ symbol, we're now calling the instance method, rather than the instance variable.

# Why do this? Why not just reference the @name instance variable, like we did before? Technically, you could just reference the instance variable, but it's generally a good idea to call the getter method instead.

# Suppose we're keeping track of social security numbers in an instance variable called @ssn. And suppose that we don't want to expose the raw data, i.e. the entire social security number, in our application. Whenever we retrieve it, we want to only display the last 4 digits and mask the rest, like this: "xxx-xx-1234". If we were referencing the @ssn instance variable directly, we'd need to sprinkle our entire class with code like this:

# converts '123-45-6789' to 'xxx-xx-6789'
'xxx-xx-' + @ssn.split('-').last

# And what if we find a bug in this code, or if someone says we need to change the format to something else? It's much easier to just reference a getter method, and make the change in one place.

def ssn
    # converts '123-45-6789' to 'xxx-xx-6789'
    'xxx-xx-' + @ssn.split('-').last
  end

# Now we can use the ssn instance method (note without the @) throughout our class to retrieve the social security number. Following this practice will save you some headache down the line. Just like the getter method, we also want to do the same with the setter method. Wherever we're changing the instance variable directly in our class, we should instead use the setter method. But there's a gotcha, which we'll cover next.

# Suppose we added two more states to track to the GoodDog class called "height" and "weight":
    
attr_accessor :name, :height, :weight

# This one line of code gives us six getter/setter instance methods: name, name=, height, height=, weight, weight=. It also gives us three instance variables: @name, @height, @weight. Now suppose we want to create a new method that allows us to change several states at once, called change_info(n, h, w). The three arguments to the method correspond to the new name, height, and weight, respectively. We could implement it like this:

def change_info(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

# Just to get caught up with all of our code, our entire GoodDog class now looks like the code below. Note the change to the initialize method and also the new method change_info. Finally, we created another method called info that displays all the states of the object, just for convenience:

class GoodDog
    attr_accessor :name, :height, :weight
  
    def initialize(n, h, w)
      @name = n
      @height = h
      @weight = w
    end
  
    def speak
      "#{name} says arf!"
    end
  
    def change_info(n, h, w)
      @name = n
      @height = h
      @weight = w
    end
  
    def info
      "#{name} weighs #{weight} and is #{height} tall."
    end
  end

#   And we can use the change_info method like this:

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.

# Just like when we replaced accessing the instance variable directly with getter methods, we'd also like to do the same with our setter methods. Let's change the implementation of the change_info method to this:

def change_info(n, h, w)
    name = n
    height = h
    weight = w
  end

  sparky.change_info('Spartacus', '24 inches', '45 lbs')
  puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

#   What happened? Why didn't our setter methods work in the change_info method?