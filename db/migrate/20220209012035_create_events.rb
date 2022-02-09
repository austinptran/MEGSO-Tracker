class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :event_id
      t.integer :point_assess
      t.string :event_location
      t.date :start_time
      t.date :end_time
      t.string :event_title
      t.string :attendee_list_id

      t.timestamps
    end
  end
end
