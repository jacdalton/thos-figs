class OtakuFigsController < ApplicationController
  before_action :set_otaku, only: [:new, :create]
  def new
    @otaku_fig = OtakuFig.new
    @anime_fig = AnimeFig.new
    # @otaku_fig.anime_fig.build
  end

  def create
    @otaku_fig = OtakuFig.new(otaku_fig_params)
    # @anime_fig = AnimeFig.new(anime_fig_params)
    @otaku_fig.otaku = @otaku
    # @otaku_fig.anime_fig = @anime_fig
    # raise
    if @otaku_fig.save
      redirect_to otaku_path(@otaku)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def otaku_fig_params
    params.require(:otaku_fig).permit(:location_id, anime_fig_attributes: [:id, :character, :series, :fig_type, :brand])
    # anime_fig_attributes: [:character, :series, :fig_type, :brand]
  end
  
  # def anime_fig_params
  #   params.require(:otaku_fig).permit(:anime_fig_attributes)
  # end

  def set_otaku
    @otaku = Otaku.find(params[:otaku_id])
  end
end
