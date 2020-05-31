class SearchController < ApplicationController
  def index
    response = Faraday.get('http://openlibrary.org/search.json') do |f|
      f.params['title'] = book_params['title']
    end
    json = JSON.parse(response.body, symbolize_names: true)
    @search_result = json[:docs].first

    reviews = Faraday.get("https://api.nytimes.com/svc/books/v3/reviews.json?api-key=#{ENV['NYT_KEY']}&title=Normal People")
    review_json = JSON.parse(reviews.body, symbolize_names: true)
    @reviews = review_json[:results]
  end

  def book_params
    params.permit(:title)
  end
end
