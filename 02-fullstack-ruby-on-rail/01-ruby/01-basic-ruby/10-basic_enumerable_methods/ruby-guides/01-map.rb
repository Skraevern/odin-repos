# Map is a Ruby method that you can use with Arrays, Hashes & Ranges.

# The main use for map is to TRANSFORM data.

# For example:

# Given an array of strings, you could go over every string & make every character UPPERCASE.

# Or if you have a list of User objects…

# You could convert them into a list of their corresponding email addresses, phone number, or any other attribute defined on the User class.

# Let’s see exactly how to do this!

array = ["a", "b", "c"]

array.map { |string| string.upcase }

# ["A", "B", "C"]



# Doubling numbers:
array = [1,2,3]

array.map { |n| n * 2 }
# [2, 4, 6]



#strings to itegers
array = ["11", "21", "5"]

array.map { |str| str.to_i }
# [11, 21, 5]



# convert hash values to symbols
hash = { bacon: "protein", apple: "fruit" }

hash.map { |k,v| [k, v.to_sym] }.to_h
# {:bacon=>:protein, :apple=>:fruit}