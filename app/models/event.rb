# frozen_string_literal: true

class Event < ApplicationRecord
  validates :event_name, :event_point, :event_location, :event_date, :event_start, :event_end, :event_verification, :event_attendee_list_id,
            presence: true, length: {minimum: 2, maximum: 50 }
  
end
