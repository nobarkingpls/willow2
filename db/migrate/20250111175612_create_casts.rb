class CreateCasts < ActiveRecord::Migration[8.0]
  def change
    create_table :casts do |t|
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
