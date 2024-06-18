def register_data
  # データの登録という文字列を表示させる
  p "データの登録"
end

def show_data
  # データの確認という文字列を表示させる
  p "データの閲覧"
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    # データの登録と出力するための関数を呼ぶ
    register_data
  elsif input == 1
    # データの確認と出力するための関数を呼ぶ
    show_data
  elsif input == 2
    # アプリケーションを終了させる
    break
    # breakはプログラムを終了させるものでなく、繰り返し処理を終了させるものなので、
    # アプリケーションを終了させる＝プログラム全体を終了させるものではないため、
    # 厳密に記述するとexitが望ましい。
    # 今回の場合は繰り返し処理しかないプログラムだったためbreakでも問題なかっただけである。
  else
    p "無効な値です"
  end
end