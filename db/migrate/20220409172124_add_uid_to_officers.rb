class AddUidToOfficers < ActiveRecord::Migration[6.1]
  def change
    add_column :officers, :UID, :integer
  end
end
