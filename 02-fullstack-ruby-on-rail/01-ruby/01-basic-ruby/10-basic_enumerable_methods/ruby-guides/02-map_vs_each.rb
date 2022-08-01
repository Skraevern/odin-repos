# Ruby Map vs Each

# What is the difference between map & each?

# Each is like a more primitive version of map…

# It gives you every element so you can work with it, but it doesn’t collect the results.

# Each always returns the original, unchanged object.

# While map does the same thing, but…

# It returns a new array with the transformed elements.

array.each { |n| n * 2 }
# [1, 2, 3]

array.map { |n| n * 2 }
# [2, 4, 6]