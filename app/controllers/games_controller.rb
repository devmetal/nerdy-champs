# frozen_string_literal: true

class GamesController < ApplicationController # rubocop:disable Style/Documentation
  before_action :authenticate_web_user!

  def index; end
end
