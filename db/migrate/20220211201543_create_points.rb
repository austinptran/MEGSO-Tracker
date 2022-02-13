class CreatePoints < ActiveRecord::Migration[6.1]
  def change
    create_table :points do |t|
      t.integer :point_count
      t.string :reward

      t.timestamps
    end
  end
end
