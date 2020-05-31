class BookService
  def find_book(title)
    response = Faraday.get('http://openlibrary.org/search.json') do |f|
      f.params['title'] = title
    end
    book_json = JSON.parse(response.body, symbolize_names: true)
    book_json[:docs].first
  end
end
