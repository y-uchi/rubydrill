def fizzbuzz(max_num)
  (1..max_num).each do |num| #1~inputされた回数を取り出して処理をするからeachを使う
    if num % 15 == 0  #処理される確率が低い方から記述する＝１５の倍数の時
      p "FizzBuss"
    elsif num % 5 == 0
      p "Buzz"
    elsif num % 3 == 0
      p "Fizz"
    else
      p num
    end
  end
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)