class Event < ActiveRecord::Base
  attr_accessible :address, :city, :date, :description, :name, :state
end
