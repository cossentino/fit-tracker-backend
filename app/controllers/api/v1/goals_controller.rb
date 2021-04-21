class Api::V1::GoalsController < ApplicationController

  def index
    @goals = User.find_by(id: params[:user_id]).goals
    render json: GoalsSerializer.new(@goals)
  end

  def create
    @user = User.find_by(id: params[:user_id])
    @goal = @user.goals.build(goal_params)
    if @goal.valid?
      @goal.save
      render json: GoalsSerializer.new(@goal), status: :accepted
    else
      render json: { errors: @goal.errors.full_messages }, status: :not_acceptable
    end
  end

  def destroy
    byebug
    my_goal = Goal.find_by(id: params[:id])
    my_goal.destroy
  end

  private


  def goal_params
    params.require(:goal).permit(:description, :miles, :month, :sport, :user_id)
  end


end