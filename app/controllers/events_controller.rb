class EventsController < ApplicationController
  
  def index
  	@events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  	@event_map = Event.all.to_gmaps4rails
  end
  
end
