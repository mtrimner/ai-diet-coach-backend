class ChangeDietIdColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :user_weights, :diet_id, true
  end
end
