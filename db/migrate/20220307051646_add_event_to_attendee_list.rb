class AddEventToAttendeeList < ActiveRecord::Migration[6.1]
  def change
		add_reference :attendee_lists, :event, foreign_key: true
  end
end
