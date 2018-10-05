class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :flight
      t.integer :pass_one
      t.integer :pass_two
      t.integer :pass_three
      t.integer :pass_four

      t.timestamps
    end
  end
end
