# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i|
  Airport.create(name: "Airport#{i+1}", city: "City#{i+1}", country: "Country#{i/5 + 1}" )
end

200.times do |i|
  r = rand(40)
  Flight.create(from_id: r, to_id: r + 5, flight_duration: rand(24), flight_start: rand(60).days.from_now)
end