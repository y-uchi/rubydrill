def calculate_points(pay, birthday)
  if pay <= 999  #まず基本のポイント付与点数から考える（誕生日は一旦置いておく）
    # 今回は999円以下の指定。しっかり＝も記述しないと999未満の意味になってしまうので注意
    # もし未満を使用したいなら「 < 1000 」と記述するのが正解
    points = pay * 0.03 #3%は0.03。ポイントの計算は大丈夫のはず
  else
    points = pay * 0.05
  end
  if birthday # 次に第二条件なので別のifとして記述。上記は絶対条件、誕生日はオプション条件と捉える。
    # 単純に正か否かなので付随するものがなくシンプルに「birthday」のみでOK
    points = points * 5 # こちらも5倍にするだけなのでシンプルに記述で良い。
  end
  p "ポイントは#{points.floor}点です" 
  # ％付与の計算はどうしても小数点が入ってしまうので、切り捨てるために「.floor」でpointsの小数点は気にしないよって指示する
end

calculate_points(500, false)
calculate_points(2000, false)
calculate_points(3000, true)