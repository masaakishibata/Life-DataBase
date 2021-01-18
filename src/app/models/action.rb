class Action < ApplicationRecord

  with_options presence: true do
    validates :living_expenses
    validates :food_expenses
    validates :shopping
  end
  
  belongs_to :scores
  belongs_to :users
end
