class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller? 

  private

  # def after_sign_out_path_for(resource)
  #   impressions_path
  # end

  def configure_permitted_parameters
    added_attrs = [ :nickname,
                    :email,
                    :password,
                    :password_confirmation,
                  ]             
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
