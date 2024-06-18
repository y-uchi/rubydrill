def fortune(birth)
  kuji = ["凶","中吉","吉", "大吉"].shuffle
  num = rand(9)
  num = birth * num % 4
  fortune = kuji[num]
  p fortune
end

p "誕生日を入力してください（例）4月4日→404、11月11日→1111"
birth = gets.to_i
fortune(birth)