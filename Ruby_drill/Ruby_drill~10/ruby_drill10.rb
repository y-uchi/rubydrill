def search(target_num,input)
  input.each_with_index do |num, index|
    if num == target_num
      p "#{index + 1}}番目の数字です。"
      return
    end
    p "その数は含まれていません。"
  end
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
search(9,input)