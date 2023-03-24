# frozen_string_literal: true

# class UsersController
class Users::UsersController < ApplicationController
  def index
    users = User.all
    render json: users, status: 200
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, status: 200
    else
      render json: {
        error: 'User not found!'
      }
    end
  end

  def update; end

  def destroy; end
end
