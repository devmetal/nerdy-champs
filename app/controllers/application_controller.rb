class ApplicationController < ActionController::Base
  before_action :authenticate_web_user!, unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nick])
  end
end
