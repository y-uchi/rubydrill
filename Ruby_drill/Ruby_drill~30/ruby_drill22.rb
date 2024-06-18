def count_evens(nums)  #呼び出す引数は配列なのでnums(複数形)
  count = 0    # 複数がいくつあったかを足していくためにcountを定義する
  nums.each do |num|  # numsで受け取った配列を一つずつ取り出して確認する作業がeach
    if num.even?  #取り出した値が偶数かを判断するeven?
      count += 1  #取り出した値が偶数(true)だったらcountに1つ足していく
    end
  end
  p count  # 最終的にメソッドでカウントできたものを出力するためのp
end

count_evens([2, 1, 2, 3, 4])
count_evens([2, 2, 0])
count_evens([1, 3, 5])