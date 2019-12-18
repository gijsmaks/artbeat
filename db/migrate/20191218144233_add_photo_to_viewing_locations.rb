class AddPhotoToViewingLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :viewing_locations, :photo, :string
  end
end
