# Summary

# That was a very quick overview of OOP in Ruby. We'll spend the next couple of chapters diving into the details.

# Exercises

# How do we create an object in Ruby? Give an example of the creation of an object.

class MyClass
end

my_obj = MyClass.new

# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

module MyModule
end

class MyClass
    include MyModule
end

my_obj = MyClass.new

