class UserController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show #編集必要
    @user = current_user
  end

end
