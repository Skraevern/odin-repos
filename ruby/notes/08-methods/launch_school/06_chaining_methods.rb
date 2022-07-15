def add_three(n)
    n + 3
  end

  add_three(5)        # returns 8

  add_three(5).times { puts 'this should print 8 times'}

this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
=> 8


"hi there".length.to_s      # returns "8" - a String


add_three(5).times { puts "will this work?" }
#NoMethodError: undefined method `times' for nil:NilClass

