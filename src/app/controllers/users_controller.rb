class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def edit
  end
  
  def create
    User.create(user_params)
  end

  def show
    @action = Action.find(:id,params[:action_id])
    @score = Score.find(:id,params[:score_id])
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
    ).merge(
      action_id: params[:action_id],
      score_id: params[:score_id],
    )
  end

end
