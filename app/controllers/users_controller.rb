class UsersController < ApplicationController
  before_action :doorkeeper_authorize!, :all, except: [:current]

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
