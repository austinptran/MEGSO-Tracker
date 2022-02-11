class CreateAlumnis < ActiveRecord::Migration[6.1]
  def change
    create_table :alumnis do |t|
      t.string :first_name
      t.string :last_name
      t.string :LinkedIn
      t.string :alumni_occupation
      t.integer :alumni_grad_year

      t.timestamps
    end
  end
end
