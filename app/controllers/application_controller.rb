class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception  
  before_action :configure_permitted_parameters, if: :devise_controller? #deviesを使う初期設定（キータ）
  
  def after_sign_in_path_for(resource) #ログイン後のリダイレクト先
    "/user/#{current_user.id}"
  end

  protected

  def configure_permitted_parameters
    added_attrs = [ :email, :name, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
