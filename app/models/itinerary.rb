class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :location
  validates :name, uniqueness: true
  validates :name, :description, presence: true
  # validates :user_id, uniqueness: { scope: :location_id}
  has_one_attached :photo
end
