class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.date        :living_expenses,        null: false
      t.date        :food_expenses,          null: false
      t.date        :shopping,               null: false
      t.references  :user,                   foreign_key: true
      t.references  :score,                  foreign_key: true
      t.timestamps
    end
  end
end
