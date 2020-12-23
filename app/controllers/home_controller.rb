class HomeController < ApplicationController
  def top
    if user_signed_in?
      flash[:notice] = 'すでにログインしています。'
      redirect_to creatures_infos_path
    end
  end
end
