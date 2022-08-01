def say
    # method body goes here
  end

puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

def say(words)
    puts words
  end
  
  say("hello")
  say("hi")
  say("how are you")
  say("I'm fine")

  def say(words)
    puts words + '.'    ## <= We only make the change here!
  end
  
  say("hello")
  say("hi")
  say("how are you")
  say("I'm fine")

  