class HomeController < ApplicationController
  
  def index
  	@events = upcoming(5)
  end

end
