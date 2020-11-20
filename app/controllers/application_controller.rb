class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configured_permited_parameters,  if: :devise_controller?
  #before_action :after_sign_in_path_for, if: :devise_controller?
  

  protected
  def configured_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :role])
  end
  
  #def after_sign_in_path_for(current_user)
  #  if current_user.role == 'user'
  #    redirect_to root_path
  #  else
  #    redirect_to homeAdmin_path
  #  end
  #end

end
