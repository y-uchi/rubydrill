def register_data(data)
  puts "名前を入力してください"
  name = gets.chomp
  puts "年齢を入力してください"
  age = gets.chomp
  puts "身長を入力してください（m単位）"
  tall = gets.to_f
  puts "体重を入力してください"
  weight = gets.to_f
  bmi = calculate_bmi(tall, weight)
  person = { name: name, age: age, tall: tall, weight: weight, bmi: bmi}
  data << person
end

def show_data_list(data)
  puts "見たい人の番号を選択してください"
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end
  input = gets.to_i - 1
  show_data(data[input])
end

def show_data(data)
  puts "名前:#{data[:name]}"
  puts "年齢:#{data[:age]}"
  puts "身長:#{data[:tall]}"
  puts "体重:#{data[:weight]}"
  p "BMI#{data[:bmi]}"
end

def calculate_bmi(tall, weight)
  @tall = tall
  @wight = weight
  bmi = sprintf("%.f", @wight / @tall /tall)
end

data = []
while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end