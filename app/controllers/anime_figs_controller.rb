class AnimeFigsController < ApplicationController
  def new
    @anime_fig = AnimeFig.new
  end

  def create
    @anime_fig = AnimeFig.new(anime_fig_params)
    @otaku = Otaku.find(params[:otaku_id])
    @otaku_fig = OtakuFig.create(anime_fig: @anime_fig, otaku: @otaku)
    @anime_fig.otaku_figs << @otaku_fig
    # raise
    if @anime_fig.save
      redirect_to otaku_path(@otaku)
    else
      render :new
    end
  end

  private
  def anime_fig_params
    params.require(:anime_fig).permit(:id, :character, :series, :fig_type, :brand)
  end
end
