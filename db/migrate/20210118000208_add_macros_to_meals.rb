class AddMacrosToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :carbsConsumed, :integer
    add_column :meals, :caloriesConsumed, :integer
    add_column :meals, :fatConsumed, :integer
    add_column :meals, :proteinConsumed, :integer
  end
end
