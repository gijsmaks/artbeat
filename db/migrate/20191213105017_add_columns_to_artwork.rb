class AddColumnsToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :medium, :string
    add_column :artworks, :category, :string
  end
end
