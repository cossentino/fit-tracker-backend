class Api::V1::WorkoutsController < ActionController::API

  def index
    @workouts = User.find_by(id: params[:user_id]).workouts
    render json: WorkoutsSerializer.new(@workouts)
  end

  def create
    raise params.inspect
    user = User.find_by(id: params[:user_id])
    wo = user.workouts.build(workout_params)
    render json: WorkoutsSerializer.new(wo)
  end


  private

  def workout_params
    params.require(:workout).permit(:user_id, :location, :workout_type, :exert, :date, :pace, :notes)
  end



end