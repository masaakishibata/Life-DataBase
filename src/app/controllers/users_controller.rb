class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def edit
  end
  
  def create
  end

  def show
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
