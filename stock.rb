# Takes an array of stock prices such as [17,3,6,9,15,8,6,1,10],
# each for a hypothetical day, and returns a pair of days
# representing the best day to buy and best day to sell.
# Days start at 0. Must buy before you can sell

def stock_picker(days)
  pairs = {}

  days.each.with_index do |buy_price, buy_idx|
    days.each.with_index do |sell_price, sell_idx|
      next if sell_idx < buy_idx
      pairs[[buy_idx, sell_idx]] = sell_price - buy_price
    end
  end
  pairs.key(pairs.values.max)
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
