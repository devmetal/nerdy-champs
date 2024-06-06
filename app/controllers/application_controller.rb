class ApplicationController < ActionController::Base
  before_action :authenticate_web_user!, unless: :devise_controller?
end
