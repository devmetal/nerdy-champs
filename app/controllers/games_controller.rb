# frozen_string_literal: true

class GamesController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @events = Event.order(created_at: :desc).limit(4)
  end
end
