class NickController < ApplicationController
  skip_before_action :force_a_nickname

  def new
    @user = current_web_user
  end

  def create
    current_web_user.update!(nick_params)
    redirect_to '/'
  end

  private

  def nick_params
    params.permit(:nick)
  end
end
