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
end
