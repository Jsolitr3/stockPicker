$stock_list = [ 17 , 3 , 6 , 9 , 15 , 8 , 6 , 1 , 10 ]

def stock_picker(stock_list = $stock_list)
    profit = 0 ; days = [ 0 , 0 ]
    stock_list.each_with_index do |price, index|
        for i in index...stock_list.length-1
            if (stock_list[i] - stock_list[index]) > profit
                profit = stock_list[i] - stock_list[index]
                days[0] = index
                days[1] = i
            end
        end
    end
    puts "#{days} for a profit of $#{stock_list[days[1]]} - $#{stock_list[days[0]]} = $#{profit}!"
    return days
end