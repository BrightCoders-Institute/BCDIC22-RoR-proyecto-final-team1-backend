class AmenitiesController < ApplicationController
  def index
  end

  def show
  end

  def create
		amenity = Amenity.new(
			name: ame_params[:name]
		)
		if amenity.save
			render json: amenity, status: 200
		else
			render json: {
				error: "error creating.."
			}
  end

  def update
  end

  def destroy
  end
 
	private
	def ame_params
		params.require(:amenity).permit(
			[:name])
	end
end
