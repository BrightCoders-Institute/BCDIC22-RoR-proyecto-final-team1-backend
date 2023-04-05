class Place < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :reviews
  has_many :place_amenities
  has_many :amenities, through: :place_amenities
end
