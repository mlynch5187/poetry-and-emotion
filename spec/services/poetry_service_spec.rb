require 'rails_helper'

RSpec.describe 'Poetry Service' do
  it 'Retrieves first 10 poems with author, title, and poem' do
    require "pry"; binding.pry
    response = PoetryService.new.get_poems('Emily')
    expect(response.count).to eq(10)
    response[0].has_key?(:title)
    response[0].has_key?(:author)
    response[0].has_key?(:lines)
  end
end
