class Review
  attr_reader :summary, :publish_date
  def initialize(review_info)
    @summary = review_info[:summary]
    @publish_date = review_info[:publication_dt]
  end
end
