class RemovePassangerIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :passanger_id, :integer
  end
end
