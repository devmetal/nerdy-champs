class EventsController < ApplicationController
  def show
    @event = current_web_user.events.find(params[:id])
  end

  def show_by_code
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_web_user.events.build(event_params)

    if @event.save
      redirect_to games_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :title, :description)
  end
end
