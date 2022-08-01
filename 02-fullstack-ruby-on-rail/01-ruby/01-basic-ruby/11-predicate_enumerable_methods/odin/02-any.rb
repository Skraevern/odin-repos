# You might also be able to guess what the #any? method does. It returns true if any elements in your array or hash match the condition within the block; otherwise, it will return false.


numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true

numbers.any? { |number| number < 20 }
#=> false