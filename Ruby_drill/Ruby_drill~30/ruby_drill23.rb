def array123(nums)
  if nums.include?(1) && nums.include?(2) && nums.include?(3)
    p true
  else
    p false
  end
end

array123([1, 1, 2, 3, 1])
array123([1, 2, 4, ])
array123([1, 1, 2, 1, 4, 3])

