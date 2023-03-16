class CreatePlaceAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :place_amenities do |t|
      t.belongs_to :amenity, foreign_key: true
      t.belongs_to :place, foreign_key: true

      t.timestamps
    end
  end
end
