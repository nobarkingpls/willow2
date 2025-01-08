class RemoveMoviesForeignKey < ActiveRecord::Migration[8.0]
  def change
    remove_column :movies, :rights_id
  end
end
