class ApplicationController < ActionController::Base
  before_action :authenticate_web_user!, unless: :devise_controller?
  before_action :force_a_nickname, unless: :devise_controller?

  private

  def force_a_nickname
    redirect_to controller: :nick, action: :new if current_web_user.nick.nil?
  end
end
