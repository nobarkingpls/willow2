class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.integer :movie_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
