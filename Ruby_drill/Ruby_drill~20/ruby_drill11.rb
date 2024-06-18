def check_name(str)
  if str.include?(".")
    p "エラー！記号は登録できません"
  elsif str.include?(" ")
    p "エラー！空白は登録できません"
  else
    p "登録が完了しました"
  end
end

puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str)