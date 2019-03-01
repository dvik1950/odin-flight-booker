class PassengerMailer < ApplicationMailer

  default from: "notifications@example.com"

  def thank_you
    @passenger = params[:p]
    mail(to: @passenger.email, subject: "Thank you")
  end
end
