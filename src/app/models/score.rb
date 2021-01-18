class Score < ApplicationRecord

  with_options presence: true do
    validates :score_month
    validates :score_day
  end

  belongs_to :users
end
