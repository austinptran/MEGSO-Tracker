class RemoveColumnsFromAdmins < ActiveRecord::Migration[6.1]
  def change
    remove_column :admins, :admin_name, :string
    remove_column :admins, :admin_pass, :string
    remove_column :admins, :admin_position, :string
  end
end
