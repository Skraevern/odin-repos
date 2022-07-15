a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}" # [1, 2, 3]
p mutate(a)
p "After mutate method: #{a}" # [1, 2]

def add_three(number)
    number + 3
  end
  
  
  returned_value = add_three(4)
  puts returned_value # 7

  def add_four(number)
    return number + 4
  end
  
  returned_value = add_four(4)
  puts returned_value # 8


  def add_five(number)
    return number + 5
    number + 2
  end
  
  returned_value = add_five(4)
  puts returned_value # 9