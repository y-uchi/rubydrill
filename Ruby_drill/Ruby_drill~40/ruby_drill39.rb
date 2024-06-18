#def near_ten(num)
 # num = num.digits
  # num = num.sum
  # if 10 - num <= 10 - 8
    # p "Ture"
  #else
   # num = num % 10
    # p "10の倍数との差は#{10-num}です" 
  #end
#end

#near_ten(117)
#near_ten(123)
#near_ten(111)

#惜しかったと思うけど条件で混乱して複雑に考えすぎた
#模範解答では％で余りを出して桁数を出してたけど、配列にしてそれを足す方がスッキリしていると思う。
#39-2.rbでは条件式に映る前に整数値を取得するやり方でやっているのでそちらも参考に。
# 以下模範解答

def near_ten(num)
  total = (num/100) + (num/10 % 10) + (num % 10)  #整数値は%で余りを出し整数値を取り出す
  remainder = total % 10 #変数名はわかりやすくつける
  if remainder <= 2 || remainder >= 8 # 10の倍数から2つ離れているを表すのは2or8
    puts "True"
  elsif remainder <= 5
    puts "10の倍数との差は#{remainder}です"
  else 
    puts "10の倍数との差は#{10 - remainder}です"
  end
end

near_ten(698)