irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > b = [2, 3, 4]
=> [2, 3, 4]
irb :003 > a == b
=> false
irb :004 > b.pop
=> 4
irb :005 > b.unshift(1)
=> [1, 2, 3]
irb :006 > a == b
=> true