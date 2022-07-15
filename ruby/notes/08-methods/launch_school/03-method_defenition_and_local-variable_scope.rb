a = 5

def some_method
  a = 3
end

puts a # 5

# Method invocation with a block

[1, 2, 3].each do |num|
    puts num # 1 2 3
  end

  # Method definition

def print_num(num)
    puts num 
  end

  print_num(2) # 2