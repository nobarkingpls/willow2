class CreateRights < ActiveRecord::Migration[8.0]
  def change
    create_table :rights do |t|
      t.integer :country_id
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
