class Action < ApplicationRecord

  with_options presence: true do
    with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
      validates :living_expenses
      validates :food_expenses
      validates :shopping
      validates :action_day, length: {minimum: 8} 
    end

    validates :living_expenses, numericality: { greater_than_or_equal_to: 1000, less_than: 9999999, message: "は1000円〜9,999,999円の間で入力してください。" }
    validates :food_expenses, numericality: { greater_than_or_equal_to: 500, less_than: 9999999, message: "は500円〜9,999,999円の間で入力してください。" }
    validates :shopping, numericality: { greater_than_or_equal_to: 0, less_than: 9999999, message: "は0円〜9,999,999円の間で入力してください。" }

  end
  
  # belongs_to :scores
  belongs_to :users
end
