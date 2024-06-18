def near_ten(num)
  num = num % 10
  if num <= 2|| num >= 8
    p "True"
  else
    p "False"
  end
end

near_ten(12)
near_ten(17)
near_ten(19)