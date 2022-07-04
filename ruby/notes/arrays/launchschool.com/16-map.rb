irb :011 > a = [1, 2, 3]
irb :012 > a.map { |x| x**2 }
=> [1, 4, 9]

irb :013 > a = [1, 2, 3]
irb :014 > a.map { |x| puts x**2 }
1
4
9
=> [nil, nil, nil]

irb :015 > a = [1, 2, 3]
irb :016 > a.map
=> #<Enumerator: ...>