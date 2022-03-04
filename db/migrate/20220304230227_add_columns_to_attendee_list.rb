class AddColumnsToAttendeeList < ActiveRecord::Migration[6.1]
  def change
    add_column :attendee_lists, :is_attended, :boolean
  end
end
