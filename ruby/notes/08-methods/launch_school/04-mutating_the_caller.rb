def some_method(number)
    number = 7 # this is implicitly returned by the method
  end
  
  a = 5
  some_method(a)
  puts a # 5


  a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}" # [1, 2, 3]
mutate(a)
p "After mutate method: #{a}" # [1, 2]


a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}" # [1, 2, 3]
no_mutate(a)
p "After no_mutate method: #{a}" # [1, 2, 3]

# Last method does not muthed the caller