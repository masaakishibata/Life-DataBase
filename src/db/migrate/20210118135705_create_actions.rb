class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.integer        :living_expenses,        null: false
      t.integer        :food_expenses,          null: false
      t.integer        :shopping,               null: false
      t.integer        :action_day,             null: false
      t.references     :user,                   foreign_key: true
      t.references     :score,                  foreign_key: true
      t.timestamps
    end
  end
end
