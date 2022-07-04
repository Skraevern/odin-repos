irb :007 > array.pop
=> "another string"
irb :008 > array
=> [1, "Bob", 4.33]

irb :009 > array.push("another string")
=> [1, "Bob", 4.33, "another string"]

irb :010 > array.pop
=> "another string"
irb :011 > array << "another string"
=> [1, "Bob", 4.33, "another string"]

irb :001 > a = [1, 2, 3, 4]
=> [1, 2, 3, 4]
irb :002 > a.map { |num| num**2 }
=> [1, 4, 9, 16]
irb :003 > a.collect { |num| num**2 }
=> [1, 4, 9, 16]
irb :004 > a
=> [1, 2, 3, 4]

irb :005 > a.delete_at(1)
=> 2
irb :006 > a
=> [1, 3, 4]

irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"]
=> ["cat", "dog", "bird", "cat", "snake"]
irb :008 > my_pets.delete("cat")
=> "cat"
irb :009 > my_pets
=> ["dog", "bird", "snake"]

irb :010 > b = [1, 1, 2, 2, 3, 3, 4, 4]
=> [1, 1, 2, 2, 3, 3, 4, 4]
irb :011 > b.uniq
=> [1, 2, 3, 4]
irb :012 > b
=> [1, 1, 2, 2, 3, 3, 4, 4]

irb :013 > b = [1, 1, 2, 2, 3, 3, 4, 4]
=> [1, 1, 2, 2, 3, 3, 4, 4]
irb :014 > b.uniq!
=> [1, 2, 3, 4]
irb :015 > b
=> [1, 2, 3, 4]