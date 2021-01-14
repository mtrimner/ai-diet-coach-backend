class AddActivityLevelToDiet < ActiveRecord::Migration[6.0]
  def change
    add_column :diets, :activity_level, :string
  end
end
