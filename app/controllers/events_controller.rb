class EventsController < ApplicationController
  before_action :authenticate_user!
  def index
    @events = Event.includes(:creators).all
  end

  def past
    @events = Event.includes(:creators).past
    render :index
  end

  def upcoming
    @events = Event.includes(:creators).upcoming
    render :index
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
    if @event.creators.first == current_user
      @event.destroy
    end
    redirect_to "/events"
  end

  def attend
    @event = Event.find(params[:id])
    user_event = UserEvent.find_or_create_by(event: @event, attender: current_user, creator: @event.creators.first)

    if user_event.save
      redirect_to @event, notice: "You are now attending this event."
    else
      redirect_to @event, alert: "Failed to attend the event: #{user_event.errors.full_messages.join(", ")}"
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location)
  end
end
