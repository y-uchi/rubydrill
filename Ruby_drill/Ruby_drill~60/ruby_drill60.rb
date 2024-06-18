class Dog
# クラス変数は「@@type = "犬"」として@@2つで定義できる
  def type
    type = "犬"
  end

  def initialize(name, dog_type) #引数はなくてOK
     @name = name
     @dog_type = dog_type
  end

  def name #わざわざいらない
    @name
  end

  def dog_type #わざわざいらない②
    @dog_type
  end
  
  def say #クラスメソッドはメソッドの前に自身のメソッドであることを示すself.をつけるのでした。
    p "ワンワン"
  end

  def say_type
    p "私は#{type}です" # クラス変数が使用できるので@@type
  end

  def self_introduction
    p "私の名前は#{@name}で種類は#{@dog_type}です"
  end

end

type = Dog.new("マロン", "トイプードル")
type.say
type.say_type
type.self_introduction