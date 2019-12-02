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
    @data = User.all.select(:id,:institution) 
    
    logger.info(params[:analysis_id])
    if params[:analysis_id] == '1'
      @type = 'bars'

    elsif params[:analysis_id] == '2'
      @type = 'dount'

      
    elsif params[:analysis_id] == '3'
      @type = 'lines'
    elsif params[:analysis_id] == '4'
      @data = Turtle.all.select(:id,:species,:institution)
      @type = 'dount2'
    else
      @type = 'lines'
    end
    # @data = User.all.select(:id,:name)
    respond_to do |format|

      format.html { render partial: 'chart' }

    end
  end

   # def analysis
  #   logger.info(params[:analysis_id])
  #   if params[:analysis_id] == '1'
  #     @data = User.all.select(:id)
  #   elsif params[:analysis_id] == '2'
  #     @data = User.all.select(:id, :institution)
  #   else
  #     @data = User.all.select(:id, :name)
  #   end
  #   # @data = User.all.select(:id,:name)
  #   respond_to do |format|

  #     # format.html { render :test }
  #     format.json { render json: @data }

  #   end
  # end

end
