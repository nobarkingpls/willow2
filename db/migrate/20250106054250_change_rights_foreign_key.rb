class ChangeRightsForeignKey < ActiveRecord::Migration[8.0]
  def change
    rename_column :rights, :country_id, :movie_id
  end
end
