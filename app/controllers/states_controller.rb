class StatesController < ApplicationController
  def index

  end

  def show
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