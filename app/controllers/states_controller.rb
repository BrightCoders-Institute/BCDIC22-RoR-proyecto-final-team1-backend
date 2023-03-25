class StatesController < ApplicationController
  def index
    states = State.all
		render json: states, status: 200
  end

  def show
    state = State.find_by(id: params[:id])
		if state
			render json: state, status: 200
		else
			render json: {
				error: "Article not found"
			}
		end
  end

  def create
    state = State.new(
			name: state_params[:name]
		)
		if state.save
			render json: state, status: 200
		else
			render json: {
				error: "error creating.."
			}
    end
  end

  def update
  end

  def destroy
  end

  private

  def state_params
    params.require(:state).permit([:name])
  end
end