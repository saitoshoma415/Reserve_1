class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
 # ログイン後に遷移するpathを設定
 def after_sign_in_path_for(resource)
  reservations_home_path
  # ログイン済ユーザーのみにアクセスを許可する
  # before_action :authenticate_user!

  # deviseコントローラーにストロングパラメータを追加する
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    # devise_parameter_sanitizer.permit(:account_update, keys: %i[name profile])
  # end

  # def after_sign_in_path_for(_resource)
  #   user_path(resource.id)
  # end
# ログアウト後に遷移するpathを設定
def after_sign_out_path_for(resource)
  reservations_home_path
end
  
end
end
