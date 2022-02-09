class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :UIN
      t.integer :points

      t.timestamps
    end
  end
end
