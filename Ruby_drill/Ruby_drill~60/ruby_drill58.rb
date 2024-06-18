def register_data(data)
  p "名前を入力してください"
  name = gets.chomp
  p "パンチ力を入力してください(0 ~ 100)"
  punch = power(gets.to_i)
  p "キック力を入力してください(0 ~ 100)"
  kick = power(gets.to_i)
  p "ジャンプ力を入力してください(0 ~ 100)"
  jump = power(gets.to_i)

  person = {name: name, punch: punch, kick: kick, jump: jump}
  data << person
 end

def power(power)
  while  power > 100
    p "100以下の数値を入力してください"
      power = gets.to_i
  end
end

def show_data_list(data)
  p "見たい人の番号を選択してください"
  data.each_with_index do |person, index|
    p "#{index + 1}: #{person[:name]}"
  end
  input = gets.to_i - 1
  show_data(data[input])
end
 
def show_data(data)
  p "名前：#{data[:name]}"
  p "パンチ力：#{data[:punch]}"
  p "キック力：#{data[:kick]}"
  p "ジャンプ力：#{data[:jump]}"
end

data = []
while true
  p "選択してください"
  p "[0]登録する"
  p "[1]データを確認する"
  p "[2]終了する"
 input = gets.to_i

 if input == 0
  register_data(data)
 elsif input == 1
  show_data_list(data)
 elsif input == 2
  exit
 else
  p "無効な値です"
 end

end