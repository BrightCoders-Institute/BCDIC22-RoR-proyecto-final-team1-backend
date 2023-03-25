class CitiesController < ApplicationController
  def index
    cities = City.all
    render json: cities, status: 200
  end

  def show
    city = City.find_by(id: params[:id])
    if city
      render json: city, status: 200
    else
      render json: {
        error: 'City not found'
      }
    end
  end

  def create
    city = City.new(
      state_id: city_params[:state_id],
      name: city_params[:name]
    )
    if city.save
      render json: city, status: 200
    else
      render json: {
        error: 'Error creating..'
      }
    end
  end

  def update
    city = City.find_by(id: params[:id])
    if city
      city.update(name: params[:name])
      render json: 'City record update successfully'
    else
      render json: {
        error: 'City Not Found'
      }
    end
  end

  def destroy
    city = City.find_by(id: params[:id])
    return unless city

    city.destroy
    render json: 'City has been deleted'
  end

  private

  def city_params
    params.require(:city).permit(%i[state_id name])
  end
end
