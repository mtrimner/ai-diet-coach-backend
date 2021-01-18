class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column(:meals, :calorie_consumed, :calories_consumed)
  end
end
