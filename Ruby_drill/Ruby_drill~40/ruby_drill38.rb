array=[1,3,5,6,9,10,13,20,26,31]

def binary_search(array, target)
  number_of_elements = array.length
  head = 0
  tail = array.count - 1

  while head <= tail

    center = (head + tail) /2

    if array[center] == target
      return "#{target}は配列の#{center}番目に存在します"
    elsif array[center] < target
      head = center + 1
    else
      tail = center - 1
    end
  end
  
  return "#{target}は配列内に存在しません"

end

p "検索したい数字を入力してください" 
target = gets.to_i

p binary_search(array,target)