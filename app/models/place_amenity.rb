class PlaceAmenity < ApplicationRecord
  belongs_to :place
  belongs_to :amenity
end
