[1,2,3,4,5].any?
# true

# In this specific example, any? works like the inverse of empty?. But that won’t work for every situation.

# Because this is asking the question:

# “Are there any TRUTHY elements inside this array?”

# If your array includes only non-truthy (nil/false) values you’ll get false, but the array is not really empty.

# Example:

[nil].any?
# false

# You can also pass a block to this method:

[1,2,3].any? { |n| n > 0 }
# true