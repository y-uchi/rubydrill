def close_far(a,b,c)
  x = (a - b).abs # absメソッドは絶対値を取得する
  y = (a - c).abs # 今回は負の値でなく正の値のみで判断したいから
  z = (b - c).abs # それぞれに.absを記述し、絶対値を返り値として取得する

  if x <= 1 && z >= 2 # 自分の記述だとxが0の時も含まれている。問題の読み間違えで起こった。
    puts "True" # 今回は1の時と断定しているので正しくは「x == 1」とするのが理想
  elsif y <= 1 && z >= 2 # 上記と同じく「x == 1」とする
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 2, 10)
close_far(1, 2, 3)
close_far(4, 1, 3)