class CreateViewingLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :viewing_locations do |t|
      t.string :name
      t.string :address
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
