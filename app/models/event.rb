class Event < ApplicationRecord
    has_many :attendee_lists

    validates :event_name, :event_point, :event_location, :event_date, :event_start, :event_end, :event_verification, presence: true
end
