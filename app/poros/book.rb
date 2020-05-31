class Book
  attr_reader :title, :author, :publisher
  def initialize(book_info)
    @title = book_info[:title]
    @author = book_info[:author_name].first
    @publisher = book_info[:publisher].join(', ')
  end
end
