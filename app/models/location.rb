class Location < ApplicationRecord
  validates :name, :description, presence: true
  has_many :itineraries
end
