class CreateRatings < ActiveRecord::Migration[8.0]
  def change
    create_table :ratings do |t|
      t.string :code

      t.timestamps
    end
  end
end
