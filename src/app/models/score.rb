class Score < ApplicationRecord

  with_options presence: true do
    validates :score_month
    validates :score_day
    validates :score_year
    validates :monthly_income
    validates :pay
    validates :pay_all
    validates :expense
  end

  def month_score(add)

    def initialize(score_month, monthly_income, expense)
      @score_month = x
      @monthly_income = y
      @expense = z
    end

    def add
      @add = self.puts "#{@monthly_income - @expense = @score_month}"
    end
  end
  
  month_score = Score.new(score_month, monthly_income, expense)
  month_score.add
  
  belongs_to :user
end
