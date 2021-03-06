class Api::V1::WorkoutsController < ApplicationController
  before_action :authorized

  def index
    @workouts = User.find_by(id: params[:user_id]).workouts.order(:date).reverse_order
    render json: WorkoutsSerializer.new(@workouts)
  end

  def create
    user = User.find_by(id: params[:user_id])
    wo = user.workouts.build(workout_params)
    if wo.save
      render json: WorkoutsSerializer.new(wo)
    end
  end

  def destroy
    wo = Workout.find_by(id: params[:id])
    wo.destroy
  end


  private

  def workout_params
    params.require(:workout).permit(:user_id, :location, :workout_type, :exert, :date, :pace, :notes, :miles)
  end



end