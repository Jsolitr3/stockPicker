$stock_list = [ 17 , 3 , 6 , 9 , 15 , 8 , 6 , 1 , 10 ]

def stock_picker(stock_list = $stock_list)
    profit = 0 ; index1 = 0 ; index2 = 0
    stock_list.each_with_index do |price, index|
        for i in index...stock_list.length-1
            if (stock_list[i] - stock_list[index]) > profit
                profit = stock_list[i] - stock_list[index]
                index1 = index
                index2 = i
            end
        end
    end
    puts "[#{index1},#{index2}] for a profit of $#{stock_list[index2]} - $#{stock_list[index1]} = $#{profit}!"
    return Array.new [index1, index2]
end