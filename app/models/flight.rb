class Flight < ApplicationRecord

  has_one :from, class_name: 'Airport'
  has_one :to, class_name: 'Airport'
  has_many :bookings, foreign_key: 'flight_id', class_name: 'Booking'
  has_many :passengers, through: :bookings



end
