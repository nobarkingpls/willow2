class RemoveMoviesForeignKey2 < ActiveRecord::Migration[8.0]
  def change
    remove_column :movies, :right_id
  end
end
