irb :001 > numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb :002 > numbers.select { |number| number > 4 }
=> [5, 6, 7, 8, 9, 10]
irb :003 > numbers
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]