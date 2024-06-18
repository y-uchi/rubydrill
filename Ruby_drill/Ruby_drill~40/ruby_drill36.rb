def withdraw(balance, amount)
  fee = 110
  if (balance - 110) >= amount
    zankin = balance - 110 - amount
    p "#{amount}円引き落としました。残金は#{zankin}円です"
  else 
    p "残金不足です"
  end
end

balance = 100000
puts "いくら引き落としますか？(手数料110円かかります)"
money = gets.to_i
withdraw(balance, money)