class CreateAvails < ActiveRecord::Migration[8.0]
  def change
    create_table :avails do |t|
      t.integer :country_id
      t.integer :right_id

      t.timestamps
    end
  end
end
