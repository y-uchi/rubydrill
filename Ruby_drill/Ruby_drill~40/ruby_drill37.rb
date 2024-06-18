#def lone_sum(ary)
#  ary = ary.select{ary.count > 1}.uniq
#  p ary.sum
#end

# 呼び出し例
#lone_sum([1, 2, 3])
#lone_sum([3, 2, 3])

#ここから正答
def lone_sum(ary)
  #配列から重複しない要素のみを取り出す
  uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end

  #配列内の合計
  sum = 0
  uniq_nums.each do |unique_nums|
    sum += unique_nums
  end
  p sum
end

lone_sum([1, 2, 3])
lone_sum([3, 2, 3])