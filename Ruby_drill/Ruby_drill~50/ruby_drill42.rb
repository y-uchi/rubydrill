def multiplication(num1, num2)
  multiply = num1 * num2
  p "#{num1}と#{num2}をかけた答えは#{multiply}です"
end

p "最初の数値を入力してください"
num1 = gets.to_i
p "2番目の数値を入力してください"
num2 = gets.to_i

multiplication(num1,num2)