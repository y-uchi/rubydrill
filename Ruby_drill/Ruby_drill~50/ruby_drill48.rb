class Parson
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < Parson  # Parsonが親クラスという指示。親クラスのメソッドで定義したインスタンス変数は子クラスでも適用できる
  def student # 自己紹介なのでintroduceがより適切
    p "私の名前は#{@name}です。#{@age}です。"
  end
end

student = Student.new("山田", 16)
student.student