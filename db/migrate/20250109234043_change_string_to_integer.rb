class ChangeStringToInteger < ActiveRecord::Migration[8.0]
  def change
    change_column :classifications, :movie_id, :integer
    change_column :classifications, :rating_id, :integer
  end
end
