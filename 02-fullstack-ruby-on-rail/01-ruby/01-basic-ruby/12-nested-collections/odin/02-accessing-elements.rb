teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]

#   Accessing Elements

# You already know that every element in an array has an index. Accessing a specific element within a nested array is as simple as calling array[x][y], where x is the index of the nested element and y is the index inside of the nested element.

teacher_mailboxes[0][0]
#=> "Adams"
teacher_mailboxes[1][0]
#=> "Jones"
teacher_mailboxes[2][0]
#=> "Perez"



# You can also use negative indices to return elements from the end of an array, starting at [-1].

teacher_mailboxes[0][-1]
#=> "Davis"
teacher_mailboxes[-1][0]
#=> "Perez"
teacher_mailboxes[-1][-2]
#=> "Smith"



# If you try to access an index of a nonexistent nested element, it will raise an NoMethodError, because the nil class does not have a [] method. However, just like a regular array, if you try to access a nonexistent index inside of an existing nested element, it will return nil.

teacher_mailboxes[3][0]
#=> NoMethodError
teacher_mailboxes[0][4]
#=> nil


# If you want a nil value returned when trying to access an index of a nonexistent nested element, you can use the #dig method. This method can also be used when accessing a nonexistent index inside of an existing nested element.

teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil