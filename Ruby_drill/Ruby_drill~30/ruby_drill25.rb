def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  tens_place = (num / 10) % 10 #整数の除算の余りを表す％（a%bはa÷bの余り）
  # inputが23の時は(num)=23,(num / 10)は2.3だが、Rubyの性質を利用して小数点は切り捨てられるから2になる
  # tens_place = 2 % 10は 2÷10になり２で10は整数で割れないから余りが２となる
  ones_place = num % 10
  # 一桁の出し方はnum=23だと単純に23÷10として,2余り3が答えなので3が出力される
  return tens_place, ones_place
end

puts "二桁の整数を入力してください"
input = gets.to_i

X, Y = slice_num(input)

add_result = addition(X, Y)
#additionメソッドに引数を渡して、処理結果をadd_resultに代入
multiple_result = multiplication(X, Y)
#add_resultと同様に代入

puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"