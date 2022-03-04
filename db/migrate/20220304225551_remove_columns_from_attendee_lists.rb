class RemoveColumnsFromAttendeeLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :attendee_lists, :compound_key, :string
    remove_column :attendee_lists, :UID, :integer
    remove_column :attendee_lists, :attendee_list_id, :integer
  end
end
