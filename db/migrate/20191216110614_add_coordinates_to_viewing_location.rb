class AddCoordinatesToViewingLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :viewing_locations, :latitude, :float
    add_column :viewing_locations, :longitude, :float
  end
end
