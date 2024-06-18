require "date"

day = Date.today.wday

days = ["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"]

if day = ("#{days[day]}=5".to_i)
  p "今日は#{days[day]}だ！！"
else 
  p "今日は#{days[day]}だ"
end

