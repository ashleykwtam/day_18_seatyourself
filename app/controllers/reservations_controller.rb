class ReservationsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.customer = current_customer

    if @reservation.save
      redirect_to @reservation.customer, :notice => 'Reservation made'
    else
      render 'restaurants/show'
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_time, :party_size)
  end
end
