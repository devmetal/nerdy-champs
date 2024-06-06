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
      respond_to do |format|
        format.html { redirect_to @event, notice: 'Event Created' }
        format.turbo_stream { flash.now[:notice] = 'Event Created' }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :title)
  end
end
