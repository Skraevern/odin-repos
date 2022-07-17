friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]


my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]



my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

one is 1
two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }

the pair is ["one", 1]
the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}


# You may have noticed in the above code examples that #each returns the original array or hash regardless of what happens inside the code block. This is an important thing to keep in mind when debugging your code as it can lead to some confusion.

# Take this code as an example:
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| friend.upcase }

#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# You might expect this to return ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN'], but you’d be wrong—dead wrong. It actually returns the original array you called #each on. You’re still not invited, Brian.