def caesar_cypher(string, cypher)
    
    chars = string.split("")
    chars.each_with_index { |char, i| 
        
        chars[i] = char.ord     #converts char to asci num
        num_base = chars[i]
        if chars[i].between?(65, 90) || chars[i].between?(97, 122) #A && Z || a && z

            chars[i] = chars[i] + cypher

            if (num_base.between?(65, 90) && chars[i] > 90) || (num_base.between?(91, 122) && chars[i] > 122)               
                chars[i] = chars[i] - 26 #subtrct if num overflow 
            end
        end
        chars[i] = chars[i].chr
    }
    puts chars.join("")
    
end

caesar_cypher("What a string!", 5)
