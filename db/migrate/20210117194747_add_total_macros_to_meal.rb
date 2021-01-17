class AddTotalMacrosToMeal < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :calories, :integer
    add_column :meals, :carbs, :integer
    add_column :meals, :protein, :integer
    add_column :meals, :fat, :integer
  end
end
