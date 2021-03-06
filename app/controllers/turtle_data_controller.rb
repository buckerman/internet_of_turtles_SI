class TurtleDataController < ApplicationController
  before_action :set_turtle_datum, only: [:show, :edit, :update, :destroy]
  before_action :check_permition, only: [:show, :new, :update, :destroy]
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  # skip_before_action :verify_authenticity_token
  # GET /turtle_data
  # GET /turtle_data.json
  def index
    # if !super_user
    #   redirect_to home_path
    # else
      @turtle_data = TurtleDatum.all
    # end
  end

  # GET /turtle_data/1
  # GET /turtle_data/1.json
  def show

  end

  # GET /turtle_data/new
  def new

    puts "------------received--------------"
    @turtle_datum = TurtleDatum.new

  end

  # GET /turtle_data/1/edit
  def edit
  end

  # POST /turtle_data
  # POST /turtle_data.json
  def create
    # if !super_user
    #   redirect_to home_path
    # else
      @turtle_datum = TurtleDatum.new(turtle_datum_params)

      respond_to do |format|
        if @turtle_datum.save
          format.html { render :new, notice: 'Turtle datum was successfully created.' }
          # format.json { render :index, status: :created, location: @turtle_datum }
        else
          format.html { render :new }
          format.json { render json: @turtle_datum.errors, status: :unprocessable_entity }
        end
      end
    # end
  end

  # PATCH/PUT /turtle_data/1
  # PATCH/PUT /turtle_data/1.json
  def update
    
    respond_to do |format|
      if @turtle_datum.update(turtle_datum_params)
        format.html { redirect_to @turtle_datum, notice: 'Turtle datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @turtle_datum }
      else
        format.html { render :edit }
        format.json { render json: @turtle_datum.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # DELETE /turtle_data/1
  # DELETE /turtle_data/1.json
  def destroy
    @turtle_datum.destroy
    respond_to do |format|
      format.html { redirect_to turtle_data_url, notice: 'Turtle datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private

  # Use callbacks to share common setup or constraints between actions.
  def set_turtle_datum
    @turtle_data = TurtleDatum.all
    @turtle_datum = TurtleDatum.find(params[:id])
  end

  def check_permition
    if !super_user
      redirect_to home_path
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def turtle_datum_params
    params.require(:turtle_datum).permit(:turtle_id, :temperature, :light, :depth, :latitude, :longitude)
  end
end
