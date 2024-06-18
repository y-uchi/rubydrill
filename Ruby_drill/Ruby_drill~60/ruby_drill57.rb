def register_data(date)
  # 「登録する」を選択した場合の処理
  p "名前を入力してください"
  p "パンチ力を入力してください(0 ~ 100)"
  p "キック力を入力してください(0 ~ 100)"
  p "ジャンプ力を入力してください(0 ~ 100)"
 end
 
def show_data_list(date)
  # 「データを確認する」を選択した場合の処理
  p "見たい人の番号を選択してください"
end
 
while true
  # アプリを実行した時に、選択肢が表示される処理
  # 入力した値に応じて実行される処理
  p "選択してください"
  p "[0]登録する"
  p "[1]データを確認する"
  p "[2]終了する"

 input = get.to_i

 if input == 0
  register_data
 elsif input == 1
  show_data_list
 elsif input == 2
  exit
 else
  p "無効な値です"
 end

end