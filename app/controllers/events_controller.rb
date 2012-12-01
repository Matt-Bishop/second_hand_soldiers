class EventsController < ApplicationController
  
  def index
  	@events = Event.where("Date >= ?", Time.now)
  end

  def show
  	@event = Event.find(params[:id])
    @map_hash = { "map_options" => {"auto_zoom" => false, "zoom" => 6, "auto_adjust" => true }, 
      						"direction"   => {"data" => { "from" => "20062 Mt. Faith Place, Bend, Oregon", "to" => "#{@event.address}, #{@event.city}, #{@event.state}" }, 
                                    "options" => { "display_panel" => true, "panel_id" => "instructions"}} 
                }
  end   
  
end
