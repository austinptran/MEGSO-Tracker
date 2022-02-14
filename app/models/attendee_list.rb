class AttendeeList < ApplicationRecord
    belongs_to :event, optional: true

end
