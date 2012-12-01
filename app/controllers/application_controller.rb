class ApplicationController < ActionController::Base
  protect_from_forgery

  def upcoming(num)
  	Event.where("date > ?", Time.now).limit(num)
  end	
end
