def output(input)
  (input).times do
    p "Hello"
  end
end

puts "何回表示させますか？"
input = gets.to_i

output(input)