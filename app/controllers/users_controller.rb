class UsersController < ApplicationController
  # has_many :services

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to '/dashboard'
  end

  def user_params
    params.require(:user).permit(:role, :first_name, :last_name, :city, :photo)
  end
end
