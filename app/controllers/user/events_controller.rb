class User::EventsController < ApplicationController
  def index
    @user = current_user
    @events = current_user.events
  end
end
