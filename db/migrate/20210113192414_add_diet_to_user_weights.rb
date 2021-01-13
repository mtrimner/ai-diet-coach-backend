class AddDietToUserWeights < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_weights, :diet, null: false, foreign_key: true
  end
end
