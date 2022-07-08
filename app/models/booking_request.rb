class BookingRequest < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary
  has_many :users
  validates :booking_status, inclusion: {in: %w(pending accepted decline), message: "%{value} is not valid option"}
  # validates :user_id, uniqueness: { scope: :itinerary_id}
end
