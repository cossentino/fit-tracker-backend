class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :description
      t.string :month
      t.string :sport
      t.string :miles
      t.bigint "user_id"
      t.index ["user_id"], name: "index_goals_on_user_id"

      t.timestamps
    end
  end
end
