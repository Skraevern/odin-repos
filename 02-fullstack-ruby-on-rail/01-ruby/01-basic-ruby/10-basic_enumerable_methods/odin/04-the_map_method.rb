#The #map method (also called #collect) transforms each element from an array according to whatever block you pass to it and returns the transformed elements in a new array. #map may seem confusing at first, but it is extremely useful. We’ll go through several examples and use cases, which should help you understand how and when you can use this enumerable power for good.


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']



my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]



salaries = [1200, 1500, 1100, 1800]

salaries.map { |salary| salary - 700 }
#=> [500, 800, 400, 1100]