class Api::V1::UsersController < ApplicationController

  def profile
    render json: { user: UsersSerializer.new(current_user) }, status: :accepted
  end
  
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UsersSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :not_acceptable
    end
  end
  
  
  
  def index
    @users = User.all
    render json: UsersSerializer.new(@users)
  end


  private


  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :email)
  end


end