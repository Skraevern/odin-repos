# What Are Objects?

#Throughout the Ruby community you'll often hear the phrase, "In Ruby, everything is an object!". We've avoided this so far since objects are a more advanced topic and it's necessary to get a handle on basic Ruby syntax before you start thinking about objects.

#It's not even strictly true; not everything in Ruby is an object. However, anything that can be said to have a value is an object: that includes numbers, strings, arrays, and even classes and modules. However, there are a few things that are not objects: methods, blocks, and variables are three that stand out.
#Objects are created from classes. Think of classes as molds and objects as the things you produce out of those molds. Individual objects will contain different information from other objects, yet they are instances of the same class. Here's an example of two objects of the String class:

#Copy Code
irb :001 > "hello".class
=> String
irb :002 > "world".class
=> String

#In the above example, we use the class instance method to determine what the class is for each object. As you can see, everything we've been using, from strings to integers, are in fact objects, which are instantiated from a class. We'll dig deeper into this very soon.

