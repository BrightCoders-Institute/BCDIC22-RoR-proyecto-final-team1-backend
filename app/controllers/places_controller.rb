class PlacesController < ApplicationController
  def index
    @places = Place.all
    render json: @places
  end

  def show
    @place = Place.find_by(id: params[:id])
    if @place
      render json: { user: @place.user, name: @place.name, description: @place.description,
                     max_guest: @place.max_guest, number_rooms: @place.number_rooms, number_bathrooms: @place.number_bathrooms, latitude: @place.latitude, longitude: @place.longitude, city: @place.city.name, state: @place.city.state.name, price_by_night: @place.price_by_night }
    else
      render json: { error: 'Place not found' }, status: :not_found
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.valid?
      @place.save
      render json: { place: @place, message: 'Place created successfully' }, status: :created
    else
      render json: { errors: @place.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @place = Place.find(params[:id])
    if @place
      @place.update(place_params)
      render json: 'Place updated succesfully'
    else
      render json: {
        error: 'Place not found!'
      }
    end
  end

  def destroy
    place = Place.find_by(id: params[:id])
    if place
      place.destroy
      render json: 'Place has been deleted'
    else
      render json: {
        error: 'Place not found!'
      }
    end
  end

  private

  def place_params
    params.require(:place).permit(:user_id, :name, :city_id, :description, :number_rooms, :number_bathrooms,
                                  :max_guest, :price_by_night, :latitude, :longitude)
  end
end
