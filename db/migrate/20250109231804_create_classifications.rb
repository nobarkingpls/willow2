class CreateClassifications < ActiveRecord::Migration[8.0]
  def change
    create_table :classifications do |t|
      t.string :movie_id
      t.string :rating_id
      t.string :reason_id

      t.timestamps
    end
  end
end
