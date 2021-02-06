class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer        :score_year,             null: false
      t.integer        :score_month,            null: false
      t.integer        :score_day,              null: false
      t.integer        :monthly_income,         null: false
      t.integer        :pay,                    null: false
      t.integer        :pay_all,                null: false
      t.integer        :expense,                null: false
      t.references     :user,                   foreign_key: true
      t.timestamps
    end
  end
end
