class Diet < ApplicationRecord
  belongs_to :user
  has_many :user_weights

  accepts_nested_attributes_for :user_weights, reject_if: proc { |attributes| attributes['weight'].blank?}
end
