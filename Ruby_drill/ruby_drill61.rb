def date_input(cars)
  p "車種を入力してください"
  car_model = gets.chomp # typeでOK
  p "1Lあたりの走行距離を入力してください(km/l)"
  car_run = gets.to_i # 小数点まで入力できるよう「to_f」で入力
  p "乗車人数を入力してください"
  ride = gets.to_i
  car = {car_model: car_model, car_run: car_run, ride: ride}
  cars << car
end

def car_date(cars)
  cars.each_with_index do |car, index| # ブロック変数にindexも指定する
    p "[#{index + 1}]: #{car[:car_model]}" # 配列の順番は0から始まるので+1する
  end
  p "確認したい番号を入力してください"
  input = gets.to_i - 1 #eachでinputに1を足していたので、ここで1引かないと表示したいものと1つずれる
  car = cars[input]
  if car
    show_data(car)
  else
    p "該当する番号はありません"
  end
end

def show_car(car)
  p "車種：#{car[:car_model]}"
  p "1Lあたりの走行距離：#{car[:car_run]}" #最後まで「kg/l」と記入する
  p "乗車人数：#{car[:ride]}" #「人」まで入力する
end


cars = []
while true
  p "選択してください"
  p "[0]データの登録"
  p "[1]データの確認"
  p "[2]プログラムの終了"

  input = gets.to_i

  if input == 0
    date_input(cars)
  elsif input == 1
    car_date(cars)
  elsif input == 2
    exit
  else
    p "無効なデータです"
  end
end
