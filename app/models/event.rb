class Event < ActiveRecord::Base
  attr_accessible :address, :city, :date, :description, :name, :state, :latitude, :longitude

	acts_as_gmappable

	def gmaps4rails_address
	  "#{self.address}, #{self.city}, #{self.state}" 
	end


end
