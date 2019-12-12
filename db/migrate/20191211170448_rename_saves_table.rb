class RenameSavesTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :saves, :saved_artwork
  end
end
