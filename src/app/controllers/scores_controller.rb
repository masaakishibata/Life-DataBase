class ScoresController < ApplicationController

  def index
  end

  def new
    @score = Score.new
    # @month = @score.month_score(params[:user_id])
    # score_month = x
    # monthly_income = y
    # expense = z
  end

  def edit
    @score = Score.find(params[:id])
  end

  def create
    @score = Score.new(score_params)
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
    params.require(:scores).permit(
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

end
