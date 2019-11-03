class TurtlesController < ApplicationController
  before_action :set_turtle, only: [:show, :edit, :update, :destroy]

  # GET /turtles
  # GET /turtles.json
  def index
    @turtles = Turtle.all
  end

  # GET /turtles/1
  # GET /turtles/1.json
  def show
  end

  # GET /turtles/new
  def new
    @turtle = Turtle.new
  end

  # GET /turtles/1/edit
  def edit
  end

  # POST /turtles
  # POST /turtles.json
  def create
    if super_user  
      user = User.find(turtle_params[:user_id])
    else
      @turtle.user_id = current_user.id
      user = current_user
      # @turtle.researcher = User.find(current_user.id)
    end
    @turtle = Turtle.new(turtle_params)
    
    respond_to do |format|
      
      if @turtle.save
        format.html { redirect_to @turtle, notice: 'Turtle was successfully created.' }
        format.json { render :show, status: :created, location: @turtle }
      else
        format.html { render :new }
        format.json { render json: @turtle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turtles/1
  # PATCH/PUT /turtles/1.json
  def update
    respond_to do |format|
      if @turtle.update(turtle_params)
        format.html { redirect_to @turtle, notice: 'Turtle was successfully updated.' }
        format.json { render :show, status: :ok, location: @turtle }
      else
        format.html { render :edit }
        format.json { render json: @turtle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turtles/1
  # DELETE /turtles/1.json
  def destroy
    @turtle.destroy
    respond_to do |format|
      format.html { redirect_to turtles_url, notice: 'Turtle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def turtle_info
    puts "test"
    puts params[:id]
    @turtle = Turtle.all.find(params[:id])
    respond_to do |format|
      # format.html { redirect_to @turtle, notice: 'Turtle was successfully created.' }
      format.html { render partial: 'turtle_info'}
      format.json { render :json => @turtle.turtle_data}
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turtle
      @turtle = Turtle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turtle_params
      params.require(:turtle).permit(:name, :sex, :species, :fixation_date, :birthday, :description, :user_id)
    end
end
