class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
    @score = Score.new
    @action = Action.new
  end

  def edit
    @score = Score.find(params[:id])
    @action = Action.find(params[:id])
  end
  
  def create
  end

  def show
    @score = Score.all.order("created_at DESC")
    @action = Action.all.order("created_at DESC")
    @user = User.find(params[:id])
    @score = Score.find(params[:id])
    @action = Action.find(params[:id])
  end

  def destroy
  end

  private

  def user_params
    params.require(:users).permit(
      :nickname,
      :email,
      :password,
    ).merge(
      action_id: params[:action_id],
      score_id: params[:score_id],
      token: params[:token],
    )
  end

end
