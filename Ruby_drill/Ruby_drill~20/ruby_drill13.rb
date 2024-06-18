fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

apple = fruits_price[0][1].inject{|sum,val| sum + val }
orange = fruits_price[1][1].inject{|sum,val| sum + val }
melon = fruits_price[2][1].inject{|sum,val| sum + val }

p "appleの合計金額は#{apple}です"
p "orangeの合計金額は#{orange}です"
p "melonの合計金額は#{melon}です"

