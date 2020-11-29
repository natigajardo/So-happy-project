class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configured_permited_parameters,  if: :devise_controller?


  protected
  def configured_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :address, :role, :password, :current_password])
  end

end
