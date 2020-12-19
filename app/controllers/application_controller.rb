class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    user_path(resource.id) 
  end

  def after_sign_up_path_for(resource)
    pages_new_path
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end

  def logged_in?
    !current_user.nil?
  end

end
