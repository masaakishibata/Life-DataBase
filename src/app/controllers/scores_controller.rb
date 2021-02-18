class ScoresController < ApplicationController
  before_action :score_new, only: [:index, :new, :edit, :show]


  def index
  end

  def new
    @score = Score.new
  end

  def edit
    @score = Score.find(params[:id])
  end

  def create
    @score = Score.create(score_params)
    if @score.valid?
      @score.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def show
  end

  def destroy
    if user_signed_in? && @score.user_id == current_user.id
      @score.destroy
      redirect_to root_path
    else
      render root_path
    end
  end

  def update
    @score = Score.find(params[:id])
    @score.update(score_params)
    redirect_to '/users/:id'
  end

  private

  def score_params
    params.require(:score).permit(
      :score_month,
      :score_day,
      :score_year,
      :monthly_income,
      :pay,
      :pay_all,
      :expense,
    ).merge(
      user_id: current_user.id,
    )
  end

  def score_new
    @score = Score.new
  end

end
