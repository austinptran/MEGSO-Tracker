class AddColumnsToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :position, :string
    add_column :students, :email, :string
    add_column :students, :rewards_earned, :integer
  end
end
