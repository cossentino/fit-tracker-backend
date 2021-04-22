class ChangePaceToString < ActiveRecord::Migration[6.1]
  def change
    remove_column :workouts, :pace
    add_column :workouts, :pace, :string
  end
end
