class ResultsFacade
  def poems_service
    PoetryService.new
  end

  def poem_search(author)
    poems_service.get_poems(author).map  do |poem|
      Poem.new(poem)
    end
  end
end
