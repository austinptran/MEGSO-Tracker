class Officer < ActiveRecord::Migration[6.1]
  def change
    drop_table :officers
  end
end
