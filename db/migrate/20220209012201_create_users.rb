class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :UID
      t.string :user_name
      t.integer :user_age
      t.string :user_address
      t.string :user_email
      t.string :user_phone
      t.string :user_gender

      t.timestamps
    end
  end
end
