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

  def update
    @user = User.find(params[:id])
    if @user
      @user.update(user_params)
      render json: 'User updated succesfully'
    else
      render json: {
        error: 'User not found!'
      }
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user
      user.destroy
      render json: 'User has been deleted'
    else
      render json: {
        error: 'User not found!'
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :phone_number, :address, :identification)
  end
end
