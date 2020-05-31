class Book
  attr_reader :title, :author, :publisher, :reviews
  def initialize(book_info, reviews)
    @title = book_info[:title]
    @author = book_info[:author_name].first
    @publisher = book_info[:publisher].join(', ')
    @reviews = reviews
  end
end
