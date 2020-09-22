require 'rails_helper'

RSpec.describe 'Poem Service' do
  before :each do
    @data = { :title=>"Not at Home to Callers",
      :author=>"Emily Dickinson",
      :lines=>
      ["Not at Home to Callers",
        "Says the Naked Tree --",
        "Bonnet due in April --",
        "Wishing you Good Day --"],
        :linecount=>"4" }

        @poem = Poem.new(@data)
  end
  
  it 'exists' do
    expect(@poem).to be_an_instance_of(Poem)
  end

  it 'initializes with attributes' do
    expect(@poem.title).to eq(@data[:title])
    expect(@poem.author).to eq(@data[:author])
  end
end
