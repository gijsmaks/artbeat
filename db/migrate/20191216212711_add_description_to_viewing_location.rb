class AddDescriptionToViewingLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :viewing_locations, :description, :string
  end
end
