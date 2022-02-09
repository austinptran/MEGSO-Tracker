class CreateAttendeeLists < ActiveRecord::Migration[6.1]
  def change
    create_table :attendee_lists do |t|
      t.integer :compound_key
      t.string :attendee_list_id
      t.integer :UID

      t.timestamps
    end
  end
end
