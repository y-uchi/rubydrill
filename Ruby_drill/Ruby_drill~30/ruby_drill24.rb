def sleep_in(is_weekday, is_vacation)
  if is_weekday && !is_vacation
    p false
  else
    p true
  end 
end

# 呼び出し例
sleep_in(false, false)
sleep_in(true, false)
sleep_in(false, true)


# def sleep_in(is_weekday, is_vadation)
  #if (is_weekday  != true) || (is_vacation == true)
  #  p true
  #else
  #  p false
#end

#「 A != B 」はAとBが等しくないときに使う（今回の場合は平日ではい）
# 