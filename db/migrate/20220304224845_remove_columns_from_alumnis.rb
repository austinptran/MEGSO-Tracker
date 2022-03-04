class RemoveColumnsFromAlumnis < ActiveRecord::Migration[6.1]
  def change
    remove_column :alumnis, :first_name, :string
    remove_column :alumnis, :last_name, :string
    remove_column :alumnis, :alumni_occupation, :string
  end
end
