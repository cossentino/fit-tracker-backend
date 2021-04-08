class Api::V1::UsersController < ActionController::API

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UsersSerializer.new(@user) }, status: :accepted
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end
  
  
  
  def index
    @users = User.all
    render json: UsersSerializer.new(@users)
  end


end