class PlaceAmenity < ApplicationRecord
  belongs_to :place
  belongs_to :amenity
  validates :place_id, uniqueness: { scope: :amenity_id }
end
