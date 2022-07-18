# Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greet(name = "you")
    return "Hi " + name
end

puts greet("Lars") #=> Hi Lars
puts greet() #=> Hi you

#What do the following expressions evaluate to?

    #1. x = 2
    
    #. puts x = 2
    
    #3. p name = "Joe"
    
    #4. four = "four"
    
    #5. print something = "nothing"

x = 2    # => 2

puts x = 2    # => nil

p name = "Joe"    # => "Joe"

p four = "four"    # => "four"

print something = "nothing"    # => nil
    

# Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(x, y)
    return x * y
end

# What will the following code print to the screen?
def scream(words)
    words = words + "!!!!"
    return
    puts words
  end
  
  scream("Yippeee")
  #nothingness

  #1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

  def scream(words)
    words = words + "!!!!"
    puts words
  end
  
  scream("Yippeee") # Yippee!!!!
# returns nothing

