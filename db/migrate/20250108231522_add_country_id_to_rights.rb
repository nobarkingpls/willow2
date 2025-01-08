class AddCountryIdToRights < ActiveRecord::Migration[8.0]
  def change
    add_column :rights, :country_id, :integer
  end
end
