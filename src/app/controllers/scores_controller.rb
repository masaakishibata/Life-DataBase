class ScoresController < ApplicationController

  def index
    @scores = current_user.scores
  end

  def new
    @score = Score.new
  end

  def edit
    @score = current_user.scores.find(params[:id])
  end

  def create
    # binding.pry
    @score = current_user.scores.create(score_params)
    if @score.valid?
      @score.save
      redirect_to scores_path
    else
      render action: :new
    end
  end

  def show
    @score = Score.find(params[:id])
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
    redirect_to scores_path
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
    )
  end

end
