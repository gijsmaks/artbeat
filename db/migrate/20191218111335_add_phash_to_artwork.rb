class AddPhashToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :phash, :string
  end
end
