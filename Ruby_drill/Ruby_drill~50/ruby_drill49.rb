def include_cat_and_dog?(str)
  if (str.include?("cat")) && (str.include?("dog"))
    p "True"
  else
    p "False"
  end
end

# 呼び出し例
include_cat_and_dog?("catdog")
include_cat_and_dog?("catcat") 
include_cat_and_dog?("1cat1cadodog")