class CreateAlumnis < ActiveRecord::Migration[6.1]
  def change
    create_table :alumnis do |t|
      t.integer :alumni_id
      t.string :LinkedIn
      t.string :Occupation

      t.timestamps
    end
  end
end
