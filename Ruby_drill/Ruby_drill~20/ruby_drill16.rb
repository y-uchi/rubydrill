class Fruit
  def self.flesh
    p "採れたて新鮮な果実です"
  end
 
  def initialize(name, price)
    @name = name
    @price = price
  end
 
  def introduce
    p "#{@name}は#{@price}円です"
  end
 end

apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
itigo = Fruit.new("イチゴ", 60)

Fruit.flesh
apple.introduce
orange.introduce
itigo.introduce
