def register_data(parsonal_date)
  puts "名前を入力してください"
  name = gets.chomp
  p "年齢を入力してください"
  age = gets.to_i
  p "身長を入力してください(m単位)"
  height = gets.to_f
  p "体重を入力してください(kg単位)"
  weight = gets.to_f
  parson = {name: name, age: age, height: height, weight: weight}
  parsonal_date << parson
end

def show_data(parsonal_date)
  puts "見たい人の番号を選択してください"
  index = 1
  parsonal_date.each do |parson|
    puts "#{index}: #{parson[:name]}"
    index += 1
  end
  input = gets.to_i - 1
  show_detail(parsonal_date[input])
end

def show_detail(parson)
  p "名前：#{parson[:name]}"
  p "年齢：#{parson[:age]}"
  p "身長：#{parson[:height]}"
  p "体重：#{parson[:weight]}"
end

parsonal_date = []
while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(parsonal_date)
  elsif input == 1
   show_data(parsonal_date)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end