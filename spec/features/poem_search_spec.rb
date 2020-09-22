require 'rails_helper'

describe "User can visit root path" do
  it "to see a search form" do
    visit '/'

    fill_in :author, with: 'Emily'

    click_on 'Get Poems'
    expect(current_path).to eq('/search')

    expect(page).to have_content('Author:', count:10)
    expect(page).to have_content('Title:')
    expect(page).to have_content('Lines:')
  end
end

# I should also see:
# - The tone or tones for each poem
