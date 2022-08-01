# If you want to check if all the strings inside an array have a specific size.

strings.all? { |str| str.size == 5 }

# This all? method will return true if you call it on an empty array.

[].all? { |s| s.size == 1 }
# true





