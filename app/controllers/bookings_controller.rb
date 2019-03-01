class BookingsController < ApplicationController

  def new
    @pas_number = params[:booking][:num_of_p].to_i
    @booking = Booking.new(flight_id: params[:booking][:flight_id])
    @flight = Flight.find(params[:booking][:flight_id])
    @from_airport = Airport.find(@flight.from_id)
    @to_airport = Airport.find(@flight.to_id)
  end


  def create
    params[:booking][:numb].to_i.times do |i|
      p = Passenger.create(name: params[:booking][:passengers][:"name#{i+1}"], email: params[:booking][:passengers][:"email#{i+1}"])
       @b = Booking.create(flight_id: params[:booking][:flight_id], passenger_id: p.id)
      PassengerMailer.with(p: p).thank_you.deliver_now
    end
    redirect_to booking_path(@b.id)
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
    @passengers = Passenger.all.where(id: (Booking.all.select(:passenger_id).where(flight_id: @flight.id)))
    @from_airport = Airport.find(@flight.from_id)
    @to_airport = Airport.find(@flight.to_id)
    @pas_number = @passengers.count
  end


  # def passenger_params
  #   params.permit(:flight_id, :num_of_p, passenger_attributes: [:name0, :email0, :name1, :email1, :name2, :email2])
  # end

end
