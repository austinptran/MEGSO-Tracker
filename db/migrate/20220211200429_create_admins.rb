class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :admin_name
      t.string :admin_pass
      t.string :admin_position
      t.string :admin_key

      t.timestamps
    end
  end
end
