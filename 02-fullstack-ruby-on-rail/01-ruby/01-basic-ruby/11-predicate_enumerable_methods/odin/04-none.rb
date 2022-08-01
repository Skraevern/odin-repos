# As you might expect, #none? performs the opposite function of #all?. It returns true only if the condition in the block matches none of the elements in your array or hash; otherwise, it returns false.

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false