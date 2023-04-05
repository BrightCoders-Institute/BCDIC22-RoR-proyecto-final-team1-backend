class ReservationsController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:user_id])
    @reservations = @user.reservations
    if @reservations.length >= 1
      render json: @reservations
    else
      render json: { reservation: 'You have not made a reservation yet' }, status: :ok
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
