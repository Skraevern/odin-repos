dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  
def substrings(string, dictionary)
    string = string.downcase
    substrings = []
    dictionary.each do |word|
      word = word.downcase
      if string.include?(word)
        substrings.push(word)
      end
    end
   substrings.tally
    end
    

  

puts substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> {"down"=>1, "go"=>1, "going"=>1, "how"=>1, "howdy"=>1, "it"=>1, "i"=>1, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
