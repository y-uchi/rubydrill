def num(a, b, c)
  ab = a + b
  if c <= 3
    p ab / c
  else c > 3 # 上記条件以外はelse処理なので記述しなくて良い
    p ab * c
  end
end

# 呼び出し例
num(1,5,3) 
num(1,5,5)