class SearchResults
  def initialize(title)
    @title = title
  end

  def load_book
    book_info = BookService.new.find_book(@title)
    Book.new(book_info, book_reviews)
  end

  def book_reviews
    book_reviews = ReviewService.new.find_reviews(@title)
    book_reviews.map do |review_info|
      Review.new(review_info)
    end
  end
end
