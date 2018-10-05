class Flight < ApplicationRecord

  has_one :from, class_name: 'Airport'
  has_one :to, class_name: 'Airport'


end
