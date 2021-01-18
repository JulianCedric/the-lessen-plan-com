class AddStreakColumnToHabitsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :streak, :integer
  end
end
