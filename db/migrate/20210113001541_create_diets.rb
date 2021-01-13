class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :goal
      t.date :start_date
      t.date :end_date
      t.integer :target_weight
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
