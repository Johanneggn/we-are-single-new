class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :who]
  def index
    @eventsall = Event.all

    @events = Event.geocoded
      @markers = @events.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude
        }
      end
  end

  def show
    @event = Event.find(params[:id])
  end
  def who
  end

  def new
    @event = Event.new # needed to instantiate the form_for
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save!
    redirect_to user_events_path
  end

  def edit

  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to user_events_path
  end

  def complete
    @event = Event.find(params[:id])
    @event.update(status: "complete")
    redirect_to user_events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :price, :address, :start_date, :end_date, :link, :start_time, :end_time, :kind)
  end
end
