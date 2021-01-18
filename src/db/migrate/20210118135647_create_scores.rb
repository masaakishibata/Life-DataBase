class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.date        :score_month,        null: false
      t.date        :score_day,          null: false
      t.references  :user,                   foreign_key: true
      t.timestamps
    end
  end
end
