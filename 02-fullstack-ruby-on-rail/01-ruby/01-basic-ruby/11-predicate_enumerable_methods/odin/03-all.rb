# The all? method is also fairly intuitive. It only returns true if all the elements in your array or hash match the condition you set within the block; otherwise, it will return false.

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false

# Special note to keep in mind while debugging: #all? will return true by default unless the block returns false or nil. So if you call #all? on an empty array or hash (i.e., there are no elements for the block to evaluate), it will return true.