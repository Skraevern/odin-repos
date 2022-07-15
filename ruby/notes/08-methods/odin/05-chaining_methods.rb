phrase = ["be", "to", "not", "or", "be", "to"]

["be", "to", "not", "or", "be", "to"].reverse
= ["to", "be", "or", "not", "to", "be"].join(" ")
= "to be or not to be".capitalize
= "To be or not to be"

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"