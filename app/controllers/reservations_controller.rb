class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.time = session[:current_res_time]
    @reservation.date = session[:current_res_date]
    @reservation.party_size = session[:party_size]
    @reservation.restaurant_id = session[:restaurant_id]
    if @reservation.save
      redirect_to new_search_restaurants_path
    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end


  private
  def reservation_params
    params.require(:reservation).permit(:name, :email)
  end

end
