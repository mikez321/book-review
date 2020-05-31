class SearchController < ApplicationController
  def index
    @book = SearchResults.new(params['title']).load_book
  end

  def book_params
    params.permit(:title)
  end
end
