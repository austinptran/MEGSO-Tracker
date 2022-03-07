# frozen_string_literal: true

module EventsHelper
	def check_event_date
		@event_date || nil
	end
	def check_event_name
		@event_name || nil
	end
end
