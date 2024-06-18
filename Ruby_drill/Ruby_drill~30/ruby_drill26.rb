def extra_end(str)
  @str = str.slice(3,5) #3文字目後から5番目まで取得する(つまり4,5番目を取得する)
  #より綺麗な記述は(-2, 2)後ろから2番目から2文字分取得するという意味
  p @str * 3 #問題は3回繰り返して出力なので✖️3を記述
  #クラスメソッドではないので、インスタンス変数を使わなくて良い
end

# 呼び出し例
extra_end('Hello') 