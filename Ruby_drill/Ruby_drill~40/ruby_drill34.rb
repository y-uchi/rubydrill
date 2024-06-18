def array_count9(nums)
  count = nums.count(9)
  p "配列の中には9が#{count}個です"
end

# 呼び出し例
array_count9([1, 2, 9]) 
array_count9([1, 9, 9])
array_count9([1, 9, 9, 3, 9])