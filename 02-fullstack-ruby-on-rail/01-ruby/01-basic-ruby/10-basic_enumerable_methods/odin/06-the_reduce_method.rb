# The #reduce method (also called #inject) is possibly the most difficult-to-grasp enumerable for new coders. The idea is simple enough, though: it reduces an array or hash down to a single object. You should use #reduce when you want to get an output of a single value.

# A classic example of when #reduce is useful is obtaining the sum of an array of numbers. First, let’s explore how we would achieve this using #each:



my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

sum
#=> 26



my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26



my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026



votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}