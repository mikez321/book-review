class SearchController < ApplicationController
  def index
    response = Faraday.get('http://openlibrary.org/search.json') do |f|
      f.params['title'] = book_params['title']
    end
    json = JSON.parse(response.body, symbolize_names: true)
    @search_result = json[:docs].first
  end

  def book_params
    params.permit(:title)
  end
end
