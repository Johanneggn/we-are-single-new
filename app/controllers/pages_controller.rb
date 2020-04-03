class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @eventsall = Event.all
    @eventsthird = @eventsall.
      where('events.start_date >= ?', Date.today).
      order("events.start_date").
      first(3)
  end
end
