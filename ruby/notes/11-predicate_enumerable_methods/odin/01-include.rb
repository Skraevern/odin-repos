#The #include? method works exactly like you think it should. If we want to know whether a particular element exists in an array, we can use the #include? method. This method will return true if the element you pass as an argument to #include? exists in the array or hash; otherwise, it will return false.



numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }

invited_list.include?('Brian')
#=> false