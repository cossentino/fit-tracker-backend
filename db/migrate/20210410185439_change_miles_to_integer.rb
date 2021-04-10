class ChangeMilesToInteger < ActiveRecord::Migration[6.1]
  def change
    remove_column :goals, :miles
    add_column :goals, :miles, :integer
  end
end
