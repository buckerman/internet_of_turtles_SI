class SearchController < ApplicationController
  def index
  end

  def result
    @search_result = params[:search_text]
    @turtles = Turtle.search(@search_result)
    @users = User.search(@search_result)

    render search_index_path
  end
end
