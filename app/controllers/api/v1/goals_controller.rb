class Api::V1::GoalsController < ApplicationController

  def index
    @goals = User.find_by(id: params[:user_id]).goals
    render json: GoalsSerializer.new(@goals)
  end

  def create
    @goal = goal.new(goal_params)
    if goal.valid?
      goal.save
      render json: GoalsSerializer.new(@goal), status: :accepted
    else
      render json: { errors: @goal.errors.full_messages }, status: :not_acceptable
    end
  end

  private


  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :email)
  end


end