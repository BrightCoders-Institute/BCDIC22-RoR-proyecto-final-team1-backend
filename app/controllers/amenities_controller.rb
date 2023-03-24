class AmenitiesController < ApplicationController
  def index
		amenities = Amenity.all
		render json: amenities, status: 200
  end

  def show
		amenity = Amenity.find_by(id: params[:id])
		if amenity
			render json: amenity, status: 200
		else
			render json: {
				error: "Article not found"
			}
		end
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
  end

  def update
		amenity = Amenity.find_by(id: params[:id])
		if amenity
			amenity.update(name: params[:name])
			render json: "Amenity record update Successfully"
		else
			render json: {
				error:"Article Not Found"
			}
		end
  end

  def destroy
  end
 
	private
	def ame_params
		params.require(:amenity).permit(
			[:name])
	end
end
