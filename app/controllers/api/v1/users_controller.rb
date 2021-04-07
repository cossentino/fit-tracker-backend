class Api::V1::UsersController < ActionController::API

  def index
    @users = User.all
    render json: UsersSerializer.new(@users)
  end


end