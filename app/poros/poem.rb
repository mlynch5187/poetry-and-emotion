class Poem
  attr_reader :title, :author, :lines, :tones

  def initialize(poem_attributes)
    @title = poem_attributes[:title]
    @author = poem_attributes[:author]
    @lines = poem_attributes[:lines].join('')
    @tones = tone
  end

  def tone
    ToneService.new.get_tones(@lines)
  end
end
