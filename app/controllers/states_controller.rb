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
        error: 'State not found'
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
        error: 'error creating..'
      }
    end
  end

  def update
    state = State.find_by(id: params[:id])
    if state
      state.update(name: params[:name])
      render json: 'State record update successfully'
    else
      render json: {
        error: 'State Not Found'
      }
    end
  end

  def destroy
    state = State.find_by(id: params[:id])
    return unless state

    state.destroy
    render json: 'State has been deleted'
  end

  private

  def state_params
    params.require(:state).permit([:name])
  end
end
