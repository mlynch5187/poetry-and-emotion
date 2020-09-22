class SearchController < ApplicationController

  def index
    author = params[:author]
    @poems = ResultsFacade.new.poem_search(author)
  end
end
