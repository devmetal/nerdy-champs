module ApplicationHelper
  def nickname
    current_web_user.nick if web_user_signed_in?
  end
end
