class AttendeeList < ApplicationRecord
    belongs_to :event, optional: true
		has_many :student

end
