class EventsController < ApplicationController
  def show
    @event = current_web_user.events.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_web_user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :title)
  end
end
