class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :booking_requests
  validates :name, uniqueness: true
  validates :name, :description, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  # validates :user_id, uniqueness: { scope: :location_id}
end
