class Food
  @@foods = []
  def self.input
    p "料理名を入力してください"
    name = gets.chomp
    p "カロリーを入力してください"
    calory = gets.to_i

    food = Food.new(name, calory)
    @@foods << food
  end

  def self.show_all_calory
    total_calory = 0
    line = "---------------------------"
    p line
    @@foods.each do |food|
      p "#{food.name}: #{food.calory}kcal"
      total_calory = total_calory + food.calory
    end
      p line
      p "カロリー合計：#{total_calory}kcal"
  end

  def initialize(name, calory)
    @name = name
    @calory = calory
  end

  def name
    return @name
  end

  def calory
    return @calory
  end
end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input           # カロリーの入力
  elsif input == 1
    Food.show_all_calory # カロリーの合計を表示
    exit
  end
end