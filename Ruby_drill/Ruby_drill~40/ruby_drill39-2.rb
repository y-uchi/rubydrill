def near_ten(num)
  num = num.digits
  num = num.sum
  num = num % 10
  if num <= 2 || num >= 8
    p "Ture"
  elsif num <= 5
    p "10の倍数との差は#{num}です"
  else 
    p "10の倍数との差は#{ 10 - num }です"
  end
end

near_ten(117)
near_ten(123)
near_ten(111)
near_ten(698)