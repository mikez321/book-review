class ReviewService
  def find_reviews(title)
    reviews = Faraday.get('https://api.nytimes.com/svc/books/v3/reviews.json') do |f|
      f.params['api-key'] = ENV['NYT_KEY']
      f.params['title'] = title
    end
    review_json = JSON.parse(reviews.body, symbolize_names: true)
    review_json[:results]
  end
end
