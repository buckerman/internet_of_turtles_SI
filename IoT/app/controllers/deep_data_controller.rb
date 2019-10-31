class DeepDataController < ApplicationController
  before_action :set_deep_datum, only: [:show, :edit, :update, :destroy]

  # GET /deep_data
  # GET /deep_data.json
  def index
    @deep_data = DeepDatum.all
  end

  # GET /deep_data/1
  # GET /deep_data/1.json
  def show
  end

  # GET /deep_data/new
  def new
    @deep_datum = DeepDatum.new
  end

  # GET /deep_data/1/edit
  def edit
  end

  # POST /deep_data
  # POST /deep_data.json
  def create
    @deep_datum = DeepDatum.new(deep_datum_params)

    respond_to do |format|
      if @deep_datum.save
        format.html { redirect_to @deep_datum, notice: 'Deep datum was successfully created.' }
        format.json { render :show, status: :created, location: @deep_datum }
      else
        format.html { render :new }
        format.json { render json: @deep_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deep_data/1
  # PATCH/PUT /deep_data/1.json
  def update
    respond_to do |format|
      if @deep_datum.update(deep_datum_params)
        format.html { redirect_to @deep_datum, notice: 'Deep datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @deep_datum }
      else
        format.html { render :edit }
        format.json { render json: @deep_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deep_data/1
  # DELETE /deep_data/1.json
  def destroy
    @deep_datum.destroy
    respond_to do |format|
      format.html { redirect_to deep_data_url, notice: 'Deep datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deep_datum
      @deep_datum = DeepDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deep_datum_params
      params.require(:deep_datum).permit(:turtle_id, :temperature, :deep, :light, :latitude, :longitude)
    end
end
