class CollectedDataController < ApplicationController
  before_action :set_collected_datum, only: [:show, :edit, :update, :destroy]

  # GET /collected_data
  # GET /collected_data.json
  def index
    @collected_data = CollectedDatum.all
  end

  # GET /collected_data/1
  # GET /collected_data/1.json
  def show
  end

  # GET /collected_data/new
  def new
    @collected_datum = CollectedDatum.new
  end

  # GET /collected_data/1/edit
  def edit
  end

  # POST /collected_data
  # POST /collected_data.json
  def create
    @collected_datum = CollectedDatum.new(collected_datum_params)

    respond_to do |format|
      if @collected_datum.save
        format.html { redirect_to @collected_datum, notice: 'Collected datum was successfully created.' }
        format.json { render :show, status: :created, location: @collected_datum }
      else
        format.html { render :new }
        format.json { render json: @collected_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collected_data/1
  # PATCH/PUT /collected_data/1.json
  def update
    respond_to do |format|
      if @collected_datum.update(collected_datum_params)
        format.html { redirect_to @collected_datum, notice: 'Collected datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @collected_datum }
      else
        format.html { render :edit }
        format.json { render json: @collected_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collected_data/1
  # DELETE /collected_data/1.json
  def destroy
    @collected_datum.destroy
    respond_to do |format|
      format.html { redirect_to collected_data_url, notice: 'Collected datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collected_datum
      @collected_datum = CollectedDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collected_datum_params
      params.require(:collected_datum).permit(:turtle_id, :temperature, :deep, :light, :latitude, :longitude, :date)
    end
end
