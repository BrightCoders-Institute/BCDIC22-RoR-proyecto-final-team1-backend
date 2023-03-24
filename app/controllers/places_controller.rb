class PlacesController < ApplicationController
  def index
    @places = Place.all
    render json: @places
  end

  def show
    @place = Place.find_by(id: params[:id])
    if @place
      render json: @place
    else
      render json: { error: 'Place not found' }, status: :not_found
    end
  end

  def new
    @article = Article.new
  end

  def create
    @place = Place.new(place_params)
    if @place.valid? 
      @place.save
      render json: { place: @place, message: "Place created successfully" }, status: :created
    else
      render json: { errors: @place.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def place_params
    params.require(:place).permit(:user_id, :name, :city_id, :description, :number_rooms, :number_bathrooms, :max_guest, :price_by_night, :latitude, :longitude)
  end
end
