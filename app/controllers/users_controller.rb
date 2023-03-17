# frozen_string_literal: true

# Class UsersController
class UsersController < ApplicationController
  def index; end

  def show; end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 200
    else
      render json: {
        error: 'Error creating user...'
      }
    end
  end

  def update; end

  def destroy; end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password)
  end
end
