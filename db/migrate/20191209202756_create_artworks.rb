class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :photo
      t.string :title
      t.string :date_of_creation
      t.text :description
      t.references :artist, foreign_key: true
      t.references :viewing_location, foreign_key: true

      t.timestamps
    end
  end
end
