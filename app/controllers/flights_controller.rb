class FlightsController < ApplicationController

  def index
    @dates= Flight.select(:flight_start).pluck(:flight_start).uniq
    @flight = Flight.new
    @airports = Airport.all.map{ |u| [ u.city, u.id ] }
    if params.has_key?(:num_of_p)
      @results = []
      @num_of_p = params[:num_of_p]
      @results = Flight.where("from_id = ? AND to_id = ? AND flight_start = ?", params[:flight][:from_id], params[:flight][:to_id], params[:flight][:flight_start]).limit(3)
    end
  end
#
#
# def params
#   params.require(:flight).permit( :from_id, :to_id, :flight_start)
# end

end
