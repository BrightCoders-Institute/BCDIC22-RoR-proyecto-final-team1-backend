class Place < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :reviews
end
