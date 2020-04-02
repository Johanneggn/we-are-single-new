class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @eventsall = Event.all
    @eventsthird = @eventsall[0..2]
  end
end
