class OtakuFigsController < ApplicationController
  def new
    @otaku_fig = OtakuFig.new
  end

  def create
    @otaku_fig = OtakuFig.new(otaku_fig_params)
    @otaku = Otaku.find(params[:otaku_id])
    @otaku_fig.otaku = @otaku
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
    params.require(:otaku_fig).permit(:)
  end
  
end
