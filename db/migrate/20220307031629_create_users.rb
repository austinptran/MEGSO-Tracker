class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :UID
      t.integer :age
      t.string :address
      t.string :phone
      t.string :gender

      t.timestamps null: false
    end
  end
end
