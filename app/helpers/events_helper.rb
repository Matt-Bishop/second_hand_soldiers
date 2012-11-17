module EventsHelper

	def full_address(event)
		"#{event.address}, #{event.city}, #{event.state}"
	end
	
end
