class CreateAdvisories < ActiveRecord::Migration[8.0]
  def change
    create_table :advisories do |t|
      t.integer :movie_id
      t.integer :reason_id

      t.timestamps
    end
  end
end
