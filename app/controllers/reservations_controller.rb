class ReservationsController < ApplicationController
  def index
  end

  def show
    @reservation = Place.find_by(id: params[:id])
    if @reservation
      render json: {  }
    else
      render json: { error: '' }, status: :not_found
    end
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.valid? 
      @reservation.save
      render json: { reservation: @reservation, message: "Reservation created successfully" }, status: :created
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def reservation_params
    params.require(:reservation).permit(:starting_date, :ending_date, :total_price, :place_id, :user_id)
  end
end
