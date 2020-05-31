require 'rails_helper'

describe 'book searching' do
  it 'can return a book when I search for it' do
    visit root_path

    fill_in 'title', with: "Normal People"

    click_button "Find Book"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Search Results")
  end
end
# As a user
# When I visit "/"
# And I input "Normal People" into the form
# (Note: Use the existing search form)
# And I click "Find Book"
# Then I should be on page "/search"
# Then I should see the book's info
# For that book I should see
# - Title
# - Author
# - Publisher
# Example:
# Normal People by Sally Roony
# Published By:  Faber & Faber,
#                Hogarth,
#                Random House Large Print,
#                Knopf Canada
# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: "Rooney's second novel tracks two gifted but troubled teenagers across four years of friendship and occasional romance."
# Review Publication Date: 2019-04-08
# - Review 2: "Like "Conversations With Friends," "Normal People" also traces a young romance in Ireland."
# Review Publication Date: 2019-04-15
