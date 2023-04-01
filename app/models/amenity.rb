class Amenity < ApplicationRecord
  has_many :place_amenities
  has_many :places, through: :place_amenities
  validates :name, presence: true, length: { minimum: 2 }
end
