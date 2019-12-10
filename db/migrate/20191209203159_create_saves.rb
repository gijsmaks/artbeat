class CreateSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :saves do |t|
      t.references :user, foreign_key: true
      t.references :artwork, foreign_key: true
      t.string :tag

      t.timestamps
    end
  end
end
