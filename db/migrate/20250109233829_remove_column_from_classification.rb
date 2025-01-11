class RemoveColumnFromClassification < ActiveRecord::Migration[8.0]
  def change
    remove_column :classifications, :reason_id, :string
  end
end
