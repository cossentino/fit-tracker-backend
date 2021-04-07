class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.date :date
      t.float :miles
      t.integer :exert
      t.string :notes
      t.string :photos
      t.time :pace

      t.timestamps
    end
  end
end
