class ChangeTypeColumnWorkoutsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :workouts, :type, :workout_type
  end
end
