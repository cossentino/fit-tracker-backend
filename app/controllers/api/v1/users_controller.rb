class Api::V1::UsersController < ActionController::API

  def index
    @users = User.all
    puts('ya got here!')
    render json: UsersSerializer.new(@users)
  end


end