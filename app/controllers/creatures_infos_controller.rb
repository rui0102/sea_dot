class CreaturesInfosController < ApplicationController
  before_action :authenticate_user!
  def index
    @creatures_infos = CreaturesInfo.all.page(params[:page]).per(10)
  end

  def new
    @creatures_info = CreaturesInfo.new
  end

  def show
    @creatures_info = CreaturesInfo.find(params[:id])
  end

  def create 
    @creatures_info = CreaturesInfo.new(creatures_info_params)
    @creatures_info.user_id = current_user.id
    if @creatures_info.save
      flash[:notice] = '投稿しました！'
      redirect_to creatures_info_path(@creatures_info)
    else
      render :new
    end
  end
  
  def destroy
    creatures_info = CreaturesInfo.find(params[:id])
    creatures_info.destroy
    redirect_to creatures_infos_path
  end

  private
    def creatures_info_params
      params.require(:creatures_info).permit(:content, :picture, :latitude,
             :longitude, :weather, :sea_lavel, :visibility, :temperature, 
             :departure, :destination)
    end
  
  
end