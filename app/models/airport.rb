class Airport < ApplicationRecord

  has_many :landings, foreign_key: 'to_id', class_name: 'Flight'
  has_many :takeoffs, foreign_key: 'from_id', class_name: 'Flight'

end
