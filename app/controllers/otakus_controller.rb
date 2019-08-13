class OtakusController < ApplicationController
  before_action :set_otaku, only: [:show, :edit, :update, :destroy]
  def index
    @otakus = Otaku.all
  end

  def show
  end

  def new
    @otaku = Otaku.new
    # @otaku.anime_figs.build
  end

  def create
    @otaku = Otaku.new(otaku_params)
    if @otaku.save
      redirect_to otaku_path(@otaku)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @otaku.update(otaku_params)
      redirect_to otaku_path(@otaku)
    else
      render :edit
    end
  end

  def destroy
    @otaku.destroy
    redirect_to root_path
  end

  private
  def otaku_params
    params.require(:otaku).permit(:name)
  end

  def set_otaku
    @otaku = Otaku.find(params[:id])
  end
end
