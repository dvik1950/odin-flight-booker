class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :from_id
      t.integer :to_id
      t.date :flight_start
      t.integer :flight_duration

      t.timestamps
    end
  end
end
