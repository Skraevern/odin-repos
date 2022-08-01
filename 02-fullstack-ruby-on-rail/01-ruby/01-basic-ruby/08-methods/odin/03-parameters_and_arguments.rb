def greet(name)
    "Hello, " + name + "!"
end

def greet2(name = "stranger")
    "Hello, " + name + "!"
end

puts greet("Kristian") #=> Hello, Kristain!
puts greet2() #=> Hello, Stranger!
puts greet2("Lars") #=> Hello, Lars!