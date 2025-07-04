#1. we want to decide when what willbe the best price w=to buy and sell so max profit can be made
#2. biggest difference between sell_price and buy price will be max profit
#3  we will go through each buy_price for each sell price 
#4 take the difference and store it if it is a profit
#5 update the profit if a new profit of higher value is made
#6 at last print the last highest profit value made on which buy and sell days

price = [17,3,6,9,15,8,6,1,10,12,16,13,10,13,5,78 ]

def stock_picker(stock_price)
    max_profit = 0
    buy_day = 0 
    sell_day = 0

    (0...stock_price.length).each do |x|                   #loop to go through buy value
        (x + 1...stock_price.length).each do |y|           #loop to go through sell value
            profit = stock_price[y] - stock_price[x]       #finds out profit for each buy/sell day possibility
            
            if profit > max_profit                         #update max_profit if a higher value found
            
                max_profit = profit  #update the max_profit
                buy_day = x          #update the buy_day 
                sell_day = y         #update the sell_day 
                         
            end
        end
    end

    puts "Buy on Day #{buy_day + 1} at ₹#{stock_price[buy_day]}"    #buy_day + 1 to start day from day1 instad of day0
    puts "Sell on Day #{sell_day + 1} at ₹#{stock_price[sell_day]}"
    puts "Maximum Profit: ₹#{max_profit}"

end

puts stock_picker(price)
