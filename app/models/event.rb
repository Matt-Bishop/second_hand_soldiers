class Event < ActiveRecord::Base
  attr_accessible :address, :city, :date, :description, :name, :state, :latitude, :longitude, :gmaps

	acts_as_gmappable

	def gmaps4rails_address
	  "#{self.address}, #{self.city}, #{self.state}" 
	end

	def gmaps4rails_title
    "#{self.name} - #{self.address}, #{self.city}"
  end

  def gmaps4rails_infowindow
    "#{self.name} - #{self.address}, #{self.city}, #{self.state} "
  end

end
