class EventsController < ApplicationController
  before_action :authenticate_user!
  def index
    @events = Event.includes(:creators).all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      UserEvent.create(event: @event, creator: current_user)
      redirect_to events_path, notice: "Event was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to "/events"
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location)
  end
end
