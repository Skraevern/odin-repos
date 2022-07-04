irb :001 > a = [1, 2, 3]
irb :002 > a.each { |e| puts e }
1
2
3
=> [1, 2, 3]

irb :003 > a = [1, 2, 3]
irb :004 > a.each { |e| puts e + 2 }
3
4
5
=> [1, 2, 3]

irb :005 > a = [1, 2, 3]
irb :006 > a.each do |e|
irb :007 *   puts e + 2
irb :008 * end
3
4
5
=> [1, 2, 3]

irb :009 > a = [1, 2, 3]
irb :010 > a.each
=> #<Enumerator: ...>

