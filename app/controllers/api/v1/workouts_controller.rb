class Api::V1::WorkoutsController < ActionController::API

  def index
    @workouts = User.find_by(id: params[:user_id]).workouts
    render json: WorkoutsSerializer.new(@workouts)
  end


end