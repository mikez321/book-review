class SearchController < ApplicationController
  def index
    results = SearchResults.new(params['title'])
    @book = results.load_book
    # @book = BookService.new.find_book(params['title'])
    @reviews = ReviewService.new.find_reviews(params['title'])
  end

  def book_params
    params.permit(:title)
  end
end
