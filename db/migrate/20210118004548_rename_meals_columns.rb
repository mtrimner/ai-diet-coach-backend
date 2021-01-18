class RenameMealsColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column(:meals, :caloriesConsumed, :calorie_consumed)
    rename_column(:meals, :carbsConsumed, :carbs_consumed)
    rename_column(:meals, :fatConsumed, :fat_consumed)
    rename_column(:meals, :proteinConsumed, :protein_consumed)
  end
end
