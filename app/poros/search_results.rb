class SearchResults
  def initialize(title)
    @title = title
  end

  def load_book
    book_info = BookService.new.find_book(@title)
    Book.new(book_info)
  end
end
