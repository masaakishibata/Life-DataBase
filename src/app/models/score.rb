class Score < ApplicationRecord

  with_options presence: true do
    validates :score_month
    validates :score_day
    validates :score_year
  end

  belongs_to :users
end
