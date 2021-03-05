class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:first_name, :last_name, :image, :email, :password]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :image, :email, :password) }

  #   devise_parameter_sanitizer.permit(:account_update) do |u|
  #     u.permit(:first_name, :last_name, :image, :email, :password, :current_password)
  #   end
  # end
end
