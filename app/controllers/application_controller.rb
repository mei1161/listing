class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

    # ログイン後のリダイレクト先
    def after_sign_in_path_for(resource)
      user_path(resource.id)
    end

  protected

  def configure_permitted_parameters
    added_profile = [ :user_id, :user_name, :email, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_profile
    devise_parameter_sanitizer.permit :account_update, keys: added_profile

    added_signin = [ :user_id, :password,]
    devise_parameter_sanitizer.permit :sign_in, keys: added_signin
  end
end
