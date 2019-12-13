class AddRelatedArtworksColumnToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :related_artworks, :string
  end
end
