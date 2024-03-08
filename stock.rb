#implement method stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

#You need to buy before you can sell.
#Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

def stock_picker(array)
    array_copy = array
    profit_array = []
    array_copy.each_with_index do |buy_price,buy_day|
        array.drop(buy_day+1).each_with_index do |sell_price, sell_day|
            profit_array << [sell_price-buy_price,buy_day,buy_day+sell_day+1]
        end
    end
    biggest_profit = 0
    for element in profit_array
        if element[0]>biggest_profit
        biggest_profit = element[0]
        end
    end
    for element in profit_array
        if element[0] == biggest_profit
            p [element[1],element[2]]
            break
        end
    end
end


stock_picker([17,3,6,9,15,8,6,1,10])