class ActionsController < ApplicationController
  before_action :action_new, only: [:index, :new, :edit, :show]
  before_action :action_find, only: [:index, :show]


  def index
  end

  def new
  end

  def edit
    @action = Action.find(params[:id])
  end

  def create
    @action = Actions.new(action_params)
    if @actions.valid?
      @actions.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def show
  end

  def destroy
    if user_signed_in? && @action.user_id == current_user.id
      @action.destroy
      redirect_to root_path
    else
      render root_path
    end
  end

  def update
    @action = Action.find(params[:id])
    @action.update(action_params)
    redirect_to root_path
  end


  private

  def action_params
    params.require(:actions).permit(
      :living_expenses,
      :food_expenses,
      :shopping,
      :action_day,
    ).merge(
      score_id: params[:score_id],
      user_id: current_user.id,
    )
  end

  def action_new
    @action = Action.new
  end

  def action_find
    @action = Action.find(params[:id])
  end

end
