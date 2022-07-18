puts "Using puts:" # using puts:
puts [] # 
p "Using p:" # Using p:
p [] # []


# pry-byebug
# gem install pry-byebug

require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  #binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")

def yell_greeting(string)
    name = string
  
    binding.pry
  
    name = name.upcase
    greeting = "WASSAP, #{name}!"
    puts greeting
  end
  
  yell_greeting("bob")