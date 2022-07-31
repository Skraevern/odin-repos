teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]

# Let’s break down how to iterate over a nested array using the #each_with_index method. I find it helpful to think of a nested array as having rows and columns. Each row is the nested element and each column is the index of the nested element. When we iterate over the teacher_mailboxes example, each element will be one row.

teacher_mailboxes.each_with_index do |row, row_index|
    puts "Row:#{row_index} = #{row}"
  end
  #=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
  #=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
  #=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
  #=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]


#   To iterate over the individual elements inside of each row, you will need to nest another enumerable method inside.

teacher_mailboxes.each_with_index do |row, row_index|
    row.each_with_index do |teacher, column_index|
      puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
    end
  end
  #=> Row:0 Column:0 = Adams
  #=> Row:0 Column:1 = Baker
  #=> Row:0 Column:2 = Clark
  #=> Row:0 Column:3 = Davis
  #=> Row:1 Column:0 = Jones
  #=> Row:1 Column:1 = Lewis
  #=> Row:1 Column:2 = Lopez
  #=> Row:1 Column:3 = Moore
  #=> Row:2 Column:0 = Perez
  #=> Row:2 Column:1 = Scott
  #=> Row:2 Column:2 = Smith
  #=> Row:2 Column:3 = Young
  #=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]


#   Although these examples are a bit contrived, it is important to note that if we only need each teacher’s name it would be beneficial to use #flatten before iterating.

teacher_mailboxes.flatten.each do |teacher|
    puts "#{teacher} is amazing!"
  end
  #=> Adams is amazing!
  #=> Baker is amazing!
  #=> Clark is amazing!
  #=> Davis is amazing!
  #=> Jones is amazing!
  #=> Lewis is amazing!
  #=> Lopez is amazing!
  #=> Moore is amazing!
  #=> Perez is amazing!
  #=> Scott is amazing!
  #=> Smith is amazing!
  #=> Young is amazing!
  #=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]


  test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]

#   Now let’s take a look at a more complicated example of nesting two predicate enumerables together. Using the above nested array of test scores, let’s determine if any student scored higher than 80 on everything.

test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end
#=> false

# This seems pretty straight-forward. It returns false, because none of the nested arrays have scores that are all over 80. What do you think will happen if we switch #any? and #all?? Do you think we will get the same results?

test_scores.all? do |scores|
    scores.any? { |score| score > 80 }
  end
  #=> true
  
#   The results are different, because now it is determining if all of the nested arrays contain any number over 80. This returns true, because each of the nested arrays have at least one number over 80.

