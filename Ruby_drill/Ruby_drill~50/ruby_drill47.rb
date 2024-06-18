movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}


p "以下から一つ選んで入力してください"
p "・title"
p "・genre"
p "・year"

input = gets.to_s

if input = "title"
  p movie["title"]
elsif input = "genre"
  p movie["genre"]
else
  p movie["year"]
end

#================模範解答================================================
def movie_info(movie, data)
  puts movie[data]
end

movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}

puts "以下から一つを選んで入力してください。
  ・title
  ・genre
  ・year"

info = gets.chomp #.chompを使用することによって文字列で記録

movie_info(movie, info)
#==================模範解答（シンボル編）=====================================
def movie_info(movie, data)
  puts movie[data]
end

movie = {title: "ハリーポッター", genre: "ファンタジー",  year: "2001年"}

puts "以下から一つを選んで入力してください。
  ・title
  ・genre
  ・year"

info = gets.chomp.to_sym # to_symは入力されたものをシンボル化するメソッド

movie_info(movie, info)

#===========================================================