# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Airport.create(name: "Airport#{i+1}", city: "City#{i+1}", country: "Country#{i + rand(4)}" )
end

100.times do |i|
  dates = [Date.new(2018, 10, 10), Date.new(2018, 11, 10), Date.new(2018, 12, 10)]
  r = rand(8)
  Flight.create(from_id: r, to_id: r + 1, flight_duration: rand(24), flight_start: dates[rand(3)])
end