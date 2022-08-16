# More About self

# We talked about self earlier, but let's try to dive a little deeper so you can understand exactly what self is and how to understand what it's referencing. self can refer to different things depending on where it is used.

# For example, so far we've seen two clear use cases for self:

# Use self when calling setter methods from within the class. In our earlier example we showed that self was necessary in order for our change_info method to work properly. We had to use self to allow Ruby to disambiguate between initializing a local variable and calling a setter method.

# Use self for class method definitions.

# Let's play around with self to see why the above two rules work. Let's assume the following code:

class GoodDog
    attr_accessor :name, :height, :weight
  
    def initialize(n, h, w)
      self.name   = n
      self.height = h
      self.weight = w
    end
  
    def change_info(n, h, w)
      self.name   = n
      self.height = h
      self.weight = w
    end
  
    def info
      "#{self.name} weighs #{self.weight} and is #{self.height} tall."
    end
    def what_is_self
        self
    end
end

# This is our standard GoodDog class, and we're using self whenever we call an instance method from within the class. We know the rule to use self, but what does self really represent here? Let's add one more instance method to help us find out.

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
# => #<GoodDog:0x007f83ac062b38 @name="Sparky", @height="12 inches", @weight="10 lbs">

# That's interesting. From within the class, when an instance method uses self, it references the calling object. In this case, that's the sparky object. Therefore, from within the change_info method, calling self.name= acts the same as calling sparky.name= from outside the class (you can't call sparky.name= inside the class, though, since it isn't in scope). Now we understand why using self to call instance methods from within the class works the way it does!

# The other place we use self is when we're defining class methods, like this:

class MyAwesomeClass
    def self.this_is_a_class_method
    end
end

# When self is prepended to a method definition, it is defining a class method. We talked about these earlier. In our GoodDog class method example, we defined a class method called self.total_number_of_dogs. This method returned the value of the class variable @@number_of_dogs. How is this possible? Let's add a line to our GoodDog class:

class GoodDog
    # ... rest of code omitted for brevity
    puts self
end

# If you run the good_dog.rb file with the GoodDog class definition, you'll see that GoodDog is output. Thus, you can see that using self inside a class but outside an instance method refers to the class itself. Therefore, a method definition prefixed with self is the same as defining the method on the class. That is, def self.a_method is equivalent to def GoodDog.a_method. That's why it's a class method; it's actually being defined on the class.

# To be clear, from within a class...

# self, inside of an instance method, references the instance (object) that called the method - the calling object. Therefore, self.weight= is the same as sparky.weight=, in our example.

# self, outside of an instance method, references the class and can be used to define class methods. Therefore if we were to define a name class method, def self.name=(n) is the same as def GoodDog.name=(n).

# Thus, we can see that self is a way of being explicit about what our program is referencing and what our intentions are as far as behavior. self changes depending on the scope it is used in, so pay attention to see if you're inside an instance method or not. self is a tricky concept to grasp in the beginning, but the more often you see its use, the more you will understand object oriented programming. If the explanations don't quite make sense, just memorize those two rules above for now.