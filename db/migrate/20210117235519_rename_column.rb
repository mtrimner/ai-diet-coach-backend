class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column(:meals, :calories, :calorie_goal)
    rename_column(:meals, :carbs, :carb_goal)
    rename_column(:meals, :fat, :fat_goal)
    rename_column(:meals, :protein, :protein_goal)
  end
end
