class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :serving_size
      t.integer :adjusted_serving_size
      t.integer :protein
      t.integer :adjusted_protein
      t.integer :protein_consumed
      t.integer :carbs
      t.integer :adjusted_carbs
      t.integer :carbs_consumed
      t.integer :fat
      t.integer :adjusted_fat
      t.integer :fat_consumed
      t.integer :calories
      t.integer :adjusted_calories
      t.integer :calories_consumed
      t.belongs_to :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
