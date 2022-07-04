irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_index { |i| puts "This is index #{i}" }
This is index 0
This is index 1
This is index 2
This is index 3
This is index 4
=> [1, 2, 3, 4, 5]

irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
1. 1
2. 2
3. 3
4. 4
5. 5
=> [1, 2, 3, 4, 5]