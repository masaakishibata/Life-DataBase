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
  
  belongs_to :user
end
