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
    @user_score = Score.all.order("created_at DESC")
    @user_action = Action.all.order("created_at DESC")
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
      token: params[:token],
    )
  end

end
