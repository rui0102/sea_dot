class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception  #初期値
  before_action :configure_permitted_parameters, if: :devise_controller? #deviesを使う初期設定（キータ）
  
  def after_sign_in_path_for(resource)
    home_pash
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
    end
end
