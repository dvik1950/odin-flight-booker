class BookingsController < ApplicationController

  def new
    @booking = Booking.new(flight_id: params[:flight_id])
    @pas_number = params[:booking][:num_of_p]
  end


  def create

  end

  def passenger_params
    params.require(:booking).permit(:flight_id, passenger_att)
  end

end
