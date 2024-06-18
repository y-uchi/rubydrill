def register_book(books)
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i
  book = { author: author, title: title, price: price }
  books << book
end

def show_books(books)
  p "平均価格#{average_price(books)}円"  #①別でメソッドを呼び出している。この時(books)で引数を指定し配列を渡さないと処理ができない
  puts "見たい番号を入力してください"
  index = 1
  books.each do |book|
    puts "#{index}: #{book[:title]}"
    index += 1
  end
  input = gets.to_i
  show_detail(books[input - 1])
end

def show_detail(book)
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

def average_price(books)   #②平均値を算出する処理を記入
  total = 0              #③合計となる変数を定義（まだ足してもいないので０）
  books.each do |book|  #booksの要素を一つ一つ取り出す
    total += book[:price] #取り出した要素の:priceのみを足していく指示
  end
  average = total / books.length  #最後に足した要素をbooksの要素数で割ると平均値が算出し、①に戻り値として平均値が出力される
end


books = []
while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
   register_book(books)
  when 1
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end