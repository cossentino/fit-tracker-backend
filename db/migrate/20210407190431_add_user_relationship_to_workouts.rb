class AddUserRelationshipToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :user_id, :bigint
    add_index :workouts, :user_id, name: "index_workouts_on_user_id"
  end
end
