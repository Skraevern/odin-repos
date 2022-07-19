# Earlier, we mentioned that enumerables like #map and #select return new arrays but don’t modify the arrays that they were called on. This is by design since we won’t often want to modify the original array or hash and we don’t want to accidentally lose that information. For example, if enumerables did mutate the original array, then using #select to filter out Brian from our invitation list would permanently remove him from our friends list. Whoah! That’s a bit drastic. Brian may be a nutcase at parties, but he’s still our friend.


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']



friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`