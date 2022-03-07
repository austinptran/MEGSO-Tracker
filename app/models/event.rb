class Event < ApplicationRecord
    has_one :attendee_list
		has_many :student, through: :attendee_list

    validates :event_name, :event_point, :event_location, :event_date, :event_start, :event_end, :event_verification, presence: true
end
