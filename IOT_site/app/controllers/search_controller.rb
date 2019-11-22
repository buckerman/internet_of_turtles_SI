class SearchController < ApplicationController
  def index
  end
  def result
    puts :search
    @search_result = params[:search][:search_text]

    @filtered_turtles = Turtle.search(@search_result)
    @filtered_users = User.search(@search_result)

    render search_index_path
  end
end
