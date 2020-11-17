class CreaturesInfosController < ApplicationController
  
  def index
    @creatures_info = CreaturesInfo.all
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
    @creatures_info.save
    redirect_to creatures_info_path(@creatures_info)
  end
  
  def destroy
  end

  private
    def creatures_info_params
      params.require(:creatures_info).permit(:content, :picture, :latitude,
             :longitude, :weather, :sea_lavel, :visibility, :temperature, 
             :departure, :destination)
    end
  
  
end