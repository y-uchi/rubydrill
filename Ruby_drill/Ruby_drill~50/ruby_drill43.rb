class Book
  attr_reader :title, :price  #変数にアクセスするのを簡易的にする
  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new("abcde", 220)
p book.title
p book.price  # 数字だけでは何を指しているか不明なので、#{book.price}円とするのが望ましい