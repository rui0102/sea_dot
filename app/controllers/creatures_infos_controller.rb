class CreaturesInfosController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: :destroy

  def index
    @creatures_infos = CreaturesInfo.all.page(params[:page]).per(10)
  end

  def new
    @creatures_info = CreaturesInfo.new
  end

  def show
    @creatures_info = CreaturesInfo.find(params[:id])
    @lat = @creatures_info.latitude
    @lng = @creatures_info.longitude
    gon.lat = @lat
    gon.lng = @lng
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
    @correct_creatures_info.destroy
    flash[:notice] = '投稿を削除しました！'
    redirect_to creatures_infos_path
  end

  def map
    gon.creatures_infos = CreaturesInfo.all
  end

  private
    def creatures_info_params
      params.require(:creatures_info).permit(:content, :picture, :latitude,
                                             :longitude, :weather, :sea_lavel, :visibility, :temperature, 
                                             :departure, :destination)
    end
    def correct_user
      @correct_creatures_info = current_user.creatures_infos.find_by(id: params[:id])
      redirect_to root_url if @correct_creatures_info.nil?
    end
  
  
end