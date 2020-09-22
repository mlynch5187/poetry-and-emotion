class PoetryService < BaseService
  def get_poems(author)
    response = conn('https://poetrydb.org').get("/author/#{author}")
    json(response).take(10)
  end
end
