class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.belongs_to :city, foreign_key: true
      t.string :description, null: true
      t.integer :number_rooms, default: 0
      t.integer :number_bathrooms, default: 0
      t.integer :max_guest, default: 0
      t.integer :price_by_night, default: 0
      t.float :latitude, null: true
      t.float :longitude, null: true

      t.timestamps
    end
  end
end
