class RemoveColumnFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :event_attendee_list_id, :string
  end
end
