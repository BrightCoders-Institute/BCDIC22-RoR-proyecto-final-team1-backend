class PlaceAmenitiesController < ApplicationController
  def show
    @place = Place.find(params[:place_id])
    @amenities = @place.amenities

    if @amenities
      render json: @amenities
    else
      render json: { error: 'Place does not have any amenities' }, status: :not_found
    end
  end

  def new
    @place_amenity = PlaceAmenity.new(place_amenity_params)
  end

  def create
    @place_amenity = PlaceAmenity.new(place_amenity_params)
    if @place_amenity.save
      render json: @place_amenity, status: :created
    else
      amenity_name = Amenity.find(@place_amenity.amenity_id).name
      render json: { error: "The amenity '#{amenity_name}' has already been assigned to this place" }, status: :unprocessable_entity
    end
  end

  def place_amenity_params
    params.require(:place_amenity).permit(:place_id, :amenity_id)
  end
end
