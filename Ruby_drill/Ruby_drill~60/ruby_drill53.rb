def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] #各月の最終日を配列として定義する
  if month == 2   #2月だけは閏年があるので条件分岐させる
    if year % 4 == 0 #4で割り切れる時は閏年なので再度条件分岐させる
      if year % 100 == 0 && year % 400 != 0  #但し、100で割り切れるが400では割り切れない時は閏年ではない
        days = 28
      else
        days = 29
      end
    else 
      days = 28
    end
  else
    days = month_days[month -1] #配列は0番目から始まるので-1をしないと、例えば10を入力した場合に11月(0から数えて10番目)の配列が渡されてしまう
  end

  return days
end


puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"
