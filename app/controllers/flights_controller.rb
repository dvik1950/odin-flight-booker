class FlightsController < ApplicationController
  def index
    @dates= Flight.select(:flight_start).pluck(:flight_start).uniq
    @flight = Flight.new
    @airports = Airport.all.map{ |u| [ u.city, u.id ] }
  end


end
