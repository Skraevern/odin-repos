
# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(array)
    best_buy = 
    best_sell =
    sell_tot = 0
    best_days = []

    array.each_with_index { |buy, buy_day|
        array.drop(buy_day).each_with_index { |sell, sell_day| 
            if sell_tot < (sell - buy)
                sell_tot = sell - buy
                best_buy = buy
                best_sell = sell
                best_days[0] = buy_day
                best_days[1] = sell_day + 1
            end  
        } 
     }
    puts "#{best_days} for a profit of $#{best_sell} - $#{best_buy} = $#{sell_tot}"
end

stock_picker([17,3,6,9,15,8,6,1,10])