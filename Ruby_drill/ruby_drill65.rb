def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  # ターミナルからじゃんけんの手を入力
  player_hand = gets.to_i

  # 乱数でプログラム側の手を決定
  program_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

  # あいこの判定はplayer_handとprogram_handの値が等しいとき
  if player_hand == program_hand
    puts "あいこで"
    return true
 # じゃんけんに勝つパターンを全て並べる
  elsif ( player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2 ) || (player_hand == 2 && program_hand == 0 )
    puts "あなたの勝ちです"
   return false

  else
    puts "あなたの負けです"
    return false

  end
end

next_game = true

puts "最初はグー、じゃんけん..."

while next_game do
  next_game = janken
end