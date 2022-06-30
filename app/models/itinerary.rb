class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :location
  validates :name, uniqueness: true
  validates :name, :description, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  # validates :user_id, uniqueness: { scope: :location_id}
end
