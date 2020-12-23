class UserController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @creatures_infos = @user.creatures_infos.page(params[:page]).per(10)
  end
end
