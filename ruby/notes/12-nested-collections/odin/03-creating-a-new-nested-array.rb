# Creating a new nested array

# Now that you have seen how to access values inside a nested array, we need to take a step back to look at creating a new nested array. In a previous lesson you were taught to create a new array, by calling the Array.new method with up to 2 optional arguments (initial size and default value), like Array.new(3) or Array.new(3, 7). However, there is one major “gotcha” that is important to point out. According to the documentation the second optional argument, for the default value, should only be used with an immutable (unable to be changed) object such as a number, boolean value, or symbol. Using a string, array, hash, or other mutable object may result in confusing behavior because each default value in the array will actually be a reference to the same default value. Therefore, any change to one of the elements will change all of the elements in the array.

# To create an array of mutable objects (string, array, hash, etc), you will need to pass the default value for Array.new via a block, using curly braces, instead of the second optional argument. The code in the block gets evaluated for every slot in the array, creating multiple objects to initialize the array with, rather than references to the same object.

# To see this for yourself, let’s look at two examples. This first example uses the second optional argument for the default value.

mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]


# Changing the value of the first element in the first nested array, causes the first element to change in all three nested arrays! This same behavior will happen with strings, hashes, or any other mutable objects.

# Now, let’s take a look at an example that omits the second optional argument and instead passes in the mutable value in a block.

immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]

# Changing the value of the first element in the first nested array does not cause the value to change in any other nested array.

