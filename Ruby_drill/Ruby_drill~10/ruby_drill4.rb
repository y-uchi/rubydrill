class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def author
    @author
  end

  def title
    @title
  end

  def content
    @content
  end

end

book = Article.new("阿部","Rubyの素晴らしさ","Awaysome Ruby!")
p book.author
p book.title
p book.content