# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  Airport.create(name: "Nikola Tesla", city: "Belgrade", country: "Serbia" )
  Airport.create(name: "Brandenburg", city: "Berlin", country: "Germany" )
  Airport.create(name: "Leonardo da Vinci–Fiumicino", city: "Rome", country: "Italy" )
  Airport.create(name: "Barcelona–El Prat Airport", city: "Barcelona", country: "Spain" )
  Airport.create(name: "Charles de Gaulle", city: "Paris", country: "France" )
  Airport.create(name: "Athens International Airport", city: "Athens", country: "Greece" )
  Airport.create(name: "John F. Kennedy International Airport", city: "New York", country: "USA " )
  Airport.create(name: "São Paulo–Guarulhos", city: "	Guarulhos", country: "Brazil" )


1000.times do |i|
  dates = [Date.new(2018, 10, 10), Date.new(2018, 11, 10), Date.new(2018, 12, 10), Date.new(2019, 1, 10), Date.new(2019, 2, 10)]
  r = rand(7)
  m = rand(7)
  until r != m
    m = rand(7)
  end
  Flight.create(from_id: r, to_id: m, flight_duration: (rand(5)), flight_start: dates[rand(5)])
end
