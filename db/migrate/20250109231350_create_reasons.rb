class CreateReasons < ActiveRecord::Migration[8.0]
  def change
    create_table :reasons do |t|
      t.string :code

      t.timestamps
    end
  end
end
