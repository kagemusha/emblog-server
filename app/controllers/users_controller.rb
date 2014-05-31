class UsersController < ApplicationController
  doorkeeper_for :all, except: [:current]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def current
    render json: current_user, root: "user", serializer: CurrentUserSerializer
  end

end
