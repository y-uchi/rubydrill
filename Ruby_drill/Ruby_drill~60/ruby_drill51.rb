def register_book(books) # ③引数を受け取る仮引数を設定する
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する
  puts '著者を入力してください'
  author = gets.chomp # ④ ハッシュに登録させたい＆文字列として渡したい
  puts 'タイトルを入力してください'
  title = gets.chomp # ⑤ ハッシュに登録させたい＆文字列として渡したい
  puts '価格を入力してください'
  price = gets.to_i # ⑥ ハッシュに登録させたい＆数値として渡したい

  book = { author: author, title: title, price: price } 
  books << book  # ⑦登録したものを最初に用意した空のボックスに入れる

end

def show_books(books) # ⑨仮引数として渡される
  puts "見たい番号を入力してください"
  index = 1 # ⑩本の番号付の数値
  books.each do |book| # 11.booksの中に入っている情報を一つ一つ抜き出す
    p "#{index}: #{book[:title]}" # 12.booksのタイトルを番号つけて出力
    index += 1  # 13.１ずつ増やしていくことでナンバリングさせる eachだから全ての情報を出力する 
  end
  input = gets.to_i  #14.ここで最初の行の入力してくださいが生きる
  show_detail(books[input - 1]) # 15.(-1)するのは、配列とハッシュは0番から始まるから、表示されているindexの番号から1引いた番号が記録されている
end

def show_detail(book)  # 16.上記から渡された引数を受け取るための仮引数を設定する
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

books = []  # ①値を入れる空のBoxを用意する
while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
    register_book(books) # ②空のボックスを実引数として渡す
  when 1
    show_books(books) # ⑧一覧表示のメソッドに実引数として渡す
  when 2
    exit
  else
    puts '無効な値です'
  end
end