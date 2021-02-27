class ActionsController < ApplicationController

  def index
    @actions = current_user.actions
  end

  def new
    @action = Action.new
  end

  def edit
    @action = current_user.actions.find(params[:id])
  end

  def create
    @action = current_user.actions.create(action_params)
    if @actions.valid?
      @actions.save
      redirect_to actions_path
    else
      render action: :new
    end
  end

  def show
    @action = Action.find(params[:id])
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
    redirect_to actions_path
  end


  private

  def action_params
    params.require(:action).permit(
      :living_expenses,
      :food_expenses,
      :shopping,
      :action_day,
    )
  end

end
