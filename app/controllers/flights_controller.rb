class FlightsController < ApplicationController

  def index
    @dates= Flight.select(:flight_start).pluck(:flight_start).uniq
    @flight = Flight.new
    @airports = Airport.all.map{ |u| [ u.city, u.id ] }
    unless params.nil?
      @results = Flight.where("from_id = ? AND to_id = ? AND flight_start = ?", params[:from_id], params[:to_id], params[:flight][:flight_start])
    end
  end



end
