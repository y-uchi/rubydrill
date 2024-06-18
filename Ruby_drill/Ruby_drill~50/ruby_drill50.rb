loop do
  p "[0]:カロリーを表示する、[1]:終了する"
  n = gets.to_i
  if n == 0
    p "500kcal"
  else 
    p "終了します" 
    break
  end
end
