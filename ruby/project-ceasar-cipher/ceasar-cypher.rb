def caesar_cypher(string, cypher)
    chars = string.split("")
    # puts chars.length
    # puts chars[0].ord

    chars.each_with_index { |char, i| 
        
        chars[i] = char.ord     #converts char to asci num
        if chars[i] >= 65 && chars[i] <= 90     #A && Z
            chars[i] = chars[i] + cypher
            if chars[i] > 90                
                chars[i] = chars[i] - 26 #subtrct if num overflow 
            end
        end
        if chars[i] >=91 && chars[i] <= 122 # a && z
            chars[i] = chars[i] + cypher
            if chars[i] > 122
                chars[i] = chars[i] - 26
            end
        end

        chars[i] = chars[i].chr
    }
    puts chars.join("")
    
end

caesar_cypher("What a string!", 5)
