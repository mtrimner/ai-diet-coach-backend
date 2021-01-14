class AddMealsPerDayToDiets < ActiveRecord::Migration[6.0]
  def change
    add_column :diets, :meals_per_day, :integer
  end
end
