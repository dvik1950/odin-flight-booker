class Flight < ApplicationRecord

  attr_accessor :flight_start

  has_one :from, class_name: 'Airport'
  has_one :to, class_name: 'Airport'


end
