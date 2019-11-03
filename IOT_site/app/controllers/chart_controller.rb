class ChartController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout 'application'

  def index
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy

    respond_to do |format|
      format.js { head :ok }
    end
  end

  def analysis
    logger.info(params[:analysis_id])
    if params[:analysis_id] == '1'
      @data = User.all.select(:id)
    elsif params[:analysis_id] == '2'
      @data = User.all.select(:id, :institution)
    else
      @data = User.all.select(:id, :name)
    end
    # @data = User.all.select(:id,:name)
    respond_to do |format|

      # format.html # show.html.erb
      format.json { render json: @data }

    end
  end
end
