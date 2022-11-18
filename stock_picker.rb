def stock_picker(prices)
    prices_length = prices.size
    best_profit = 0
    best_profit_index = []
    for i in 0..(prices_length -1)
      for j in i..(prices_length - 1)
        profit = prices[j] - prices[i]
        if profit >= best_profit
          best_profit = profit
          best_profit_index[0] = [i, j]
        end
      end
    end
    best_profit_index
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])