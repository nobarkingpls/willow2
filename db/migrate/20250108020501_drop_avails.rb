class DropAvails < ActiveRecord::Migration[8.0]
  def change
    drop_table :avails
  end
end
