class HomeController < ApplicationController
  
  def index
  end
  # POST /test
  def test
    @users = User.all
    @users = User.all.select(:id,:name)
    respond_to do |format|

      # format.html # show.html.erb
      format.json { render json: @users }
    
     end
  end
end
