class CreateBookingRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_requests do |t|
      t.string :booking_status
      t.references :user, null: false, foreign_key: true
      t.references :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
