class BookingsController < ApplicationController

  def new
    @pas_number = params[:booking][:num_of_p].to_i
    @booking = Booking.new(flight_id: params[:booking][:flight_id])
    @flight = Flight.find(params[:booking][:flight_id])
  end


  def create
    params[:booking][:numb].to_i.times do |i|
      p = Passenger.create(name: params[:booking][:passengers][:"name#{i+1}"], email: params[:booking][:passengers][:"email#{i+1}"])
      Booking.create(flight_id: params[:booking][:flight_id], passenger_id: p.id)
    end
    redirect_to root_url
  end

  # def passenger_params
  #   params.permit(:flight_id, :num_of_p, passenger_attributes: [:name0, :email0, :name1, :email1, :name2, :email2])
  # end

end
