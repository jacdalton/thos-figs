class AnimeFigsController < ApplicationController
  def new
    @anime_fig = AnimeFig.new
  end

  def create
    @anime_fig = AnimeFig.new(anime_fig_params)
    @otaku = Otaku.find(params[:otaku_id])
    if @anime_fig.save
      redirect_to new_otaku_otaku_fig(@otaku)
    else
      render :new
    end
  end

  private
  def anime_fig_params
    params.require(:anime_fig).permit(:character, :series, :fig_type, :brand)
  end
end
