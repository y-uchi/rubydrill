day = ["日", "月", "火", "水", "木", "金", "土"]

now = Time.new
now.strftime("%Y年 %m月 %d日")
wday = Date.today.wday
#　すでにTime.newしているのでDateメソッドを使用せずとも曜日は出る
# p day[now.wday] + "曜日です"

p "今日は西暦#{now}です"
p "今日は#{day[wday]}曜日です"