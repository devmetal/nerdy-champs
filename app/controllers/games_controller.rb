# frozen_string_literal: true

class GamesController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @nickname = current_web_user.nick
    @events = current_web_user.events.order(created_at: :desc).limit(4)
  end
end
