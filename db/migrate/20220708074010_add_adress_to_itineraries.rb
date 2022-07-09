class AddAdressToItineraries < ActiveRecord::Migration[6.1]
  def change
    add_column :itineraries, :address, :text
  end
end
