class ChangeFavoritesColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :artwork_id
    add_reference :favorites, :viewing_location, foreign_key: true
  end
end
